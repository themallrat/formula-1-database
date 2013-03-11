require "spec_helper"

describe "races" do
  context "without name" do 
    before do
      @race=Race.new
  end
    it "should not be valid" do  
      @race.should_not be_valid
    end
  end
  context "with name" do
    before do 
      @race=Race.new(name: "Australia")
      @race.should be_valid
    end
  end
end
