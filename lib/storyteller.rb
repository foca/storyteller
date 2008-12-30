require "rubygems"
require "context"

module Test
  # Including Storyteller in your TestCase allows you to declare a user story
  # (global to the entire test case) and then run `scenarios' (tests) regarding
  # that user story
  #
  # For example:
  #
  # class MyTestCase < Test::Unit::TestCase
  #   include Test::Storyteller
  #   
  #   story <<-EOS
  #     As a <role>
  #     I want to <feature>
  #     So that <profit>
  #   EOS
  #
  #   scenario "some scenario description" do
  #     ...
  #   end
  # end
  module Storyteller
    def self.included(base)
      base.before(:all) do
        puts
        print Storyteller.color.first
        print self.class.story.to_s.gsub(/^\s+/, '')
        print Storyteller.color.last
      end

      base.after(:all) do
        puts
      end
    
      class << base
        alias :scenario :test
      end
    
      base.extend ClassMethods
    end
    
    module ClassMethods
      def story(story=nil)
        @story = story if story
        @story
      end  
    end

    def self.color=(color)
      if color
        @start_color = "\e[#{color}m"
        @end_color   = "\e[0m"
      else
        @start_color = @end_color = nil
      end
    end
    
    def self.color
      [@start_color, @end_color]
    end
    
    self.color = 36 # cyan
  end
end
