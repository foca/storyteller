require File.dirname(__FILE__) + "/../lib/storyteller"
require "test/unit"
require "redgreen"

# Quick and dirty way to test our output
class StdoutStub
  attr_accessor :text
  
  def initialize
    @text = ""
  end
  
  def write(text)
    @text += text.to_s
  end

  def puts(text)
    write(text.to_s + "\n")
  end
  
  def flush
  end
end

class TestStoryteller < Test::Unit::TestCase
  def test_it_displays_the_story_in_color
    output = capturing_stdout { run_fixtures }
    assert_match /\e\[36mAs a tester\nI want pretty output from my stories\nSo I can see how nice they look\n\e\[0m\e\[32m\.\e\[0m\e\[32m\.\e\[0m\n/, output
  end
  
  private
  
    def run_fixtures
      Test::Unit::AutoRunner.run(true, File.dirname(__FILE__) + "/fixtures", [])
    end
  
    def capturing_stdout
      old = $stdout
      $> = StdoutStub.new
      yield
      output = $>.text
      $> = old
      output
    end
end