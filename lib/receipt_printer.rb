class ReceiptPrinter
  COST = {
    'meat' => 5,
    'milk' => 3,
    'candy' => 1,
  }

  TAX = 0.05

  def initialize(output: $stdout, items:)
    @output = output
    @items = items
  end

  def print
    output_items
    output_subtotals
    output_total
  end

  private

  attr_reader :output, :items

  def output_items
    item_lines
    divider_line
  end

  def output_subtotals
    subtotal_line
    tax_line
    divider_line
  end

  def item_lines
    items.each do |item|
      output.puts "#{item}: #{sprintf('$%.2f', item_cost(item))}"
    end
  end

  def subtotal
    @_subtotal ||= items.reduce(0) do |sum, item|
      sum + item_cost(item).to_i
    end
  end

  def item_cost(item)
    COST[item]
  end

  def divider_line
    output.puts divider
  end

  def subtotal_line
    output_with label: "subtotal", cost: subtotal
  end

  def tax_line
    output_with label: "tax", cost: subtotal * TAX
  end

  def output_total
    output_with label: "total", cost: subtotal + (subtotal * TAX)
  end

  def output_with(label:, cost:)
    output.puts "#{label}: #{sprintf('$%.2f', cost)}"
  end

  def divider
    '-' * 13
  end
end
