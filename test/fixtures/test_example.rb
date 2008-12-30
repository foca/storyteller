class ExampleStorytellerTest < Test::Unit::TestCase
  include Test::Storyteller
  
  story <<-EOS
    As a tester
    I want pretty output from my stories
    So I can see how nice they look
  EOS
  
  scenario "Running a successful scenario" do
    assert true
  end
  
  scenario "Running another scenario" do
    assert true
  end
end