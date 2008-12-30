require "context"

module Test::Storyteller
  def self.included(base)
    base.before(:all) do
      puts
      print "\e[36m"
      puts  self.class.story.to_s.gsub(/^\s+/, '')
      print "\e[0m"
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
end
