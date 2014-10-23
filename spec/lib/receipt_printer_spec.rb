require 'spec_helper'

describe ReceiptPrinter do
  describe '#print' do
    it 'returns the total due with tax' do
      output = StringIO.new
      items = %w(meat milk candy)
      receipt = ReceiptPrinter.new(output: output, items: items)

      receipt.print

      output.rewind
      expect(output.read).to eq expected_output
    end

    def expected_output
      <<-EOS
meat: $5.00
milk: $3.00
candy: $1.00
#{sum_divider}
subtotal: $9.00
tax: $0.45
#{sum_divider}
total: $9.45
      EOS
    end

    def sum_divider
      '-' * 13
    end
  end
end
