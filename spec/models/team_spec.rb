require "spec_helper"

describe "team" do    
  context "without name" do
    before do
      @team=Team.new
    end
    it "should not be valid" do
      @team.should_not be_valid
    end
  end

  context "with name" do
    before do
      @team=Team.new(name: "Ferrari")
    end
    it "should be valid" do
      @team.should be_valid
    end
  end
end