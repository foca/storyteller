Storyteller
===========

Minimalist user stories for test/unit

Examples
--------

    require "test/unit"
    require "rubygems"
    require "context"
    require "storyteller"
    
    class MyAcceptanceTest < Test::Unit::TestCase
      include Test::Storyteller
      
      story <<-EOS
        As a developer
        I want to have user stories on test/unit that look pretty
        So that I can have nice acceptance tests
      EOS
      
      scenario "So simple it's awesome" do
        # ...
      end
      
      scenario "OMG I'm so ruling the world with this" do
        # ...
      end
    end

And when run that produces:

    $ ruby my_acceptance_test.rb
    Loaded suite my_acceptance_test
    Started

    As a developer
    I want to have user stories on test/unit that look pretty
    So that I can have nice acceptance tests
    ..
    
    Finished in 0.000178 seconds.

    2 tests, 0 assertions, 0 failures, 0 errors

If you have multiple classes that include Test::Storyteller (or that inherit
from a common base class that includes it), then each story will get printed
in turn, with the scenarios run below it.

And best of all: **in full beautiful color** (cause what's the point if it
ain't pretty?)

Installing
==========

    sudo gem sources add http://gems.github.com
    sudo gem install foca-storyteller

OMG why not use Cucumber?
=========================

I like Cucumber and use it, but it's just a whole new layer of complexity when
you don't have business people checking and reviewing your user stories. Simple
requirements need simple solutions.

License
=======

(The MIT License)
 
Copyright (c) 2009 Nicolás Sanguinetti <contacto@nicolassanguinetti.info>
 
Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:
 
The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
