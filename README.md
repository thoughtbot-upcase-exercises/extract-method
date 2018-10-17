# Refactoring / Extract Method

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

If there's a group of expressions (or even a single expression) whose intention can be better described with a single, concise name, it's a sign that it can be extracted as a method.

In this exercise, you'll find several opportunities to do exactly that.

If you like, you can [watch an example from The Weekly Iteration](https://upcase.com/videos/ruby-science-extract-method).


## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/extract-method.git
    cd extract-method
    bin/setup

Within the `print` method of the `ReceiptPrinter` class, extract some code out as methods.

Remember to:

* Give each method a name that best describes its role within `print`;
* Run the tests via `rake` to make sure they're all still passing.

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/extract-method/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/refactoring-extract-method/4638)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

extract-method is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
