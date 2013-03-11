require "spec_helper"

describe "races" do
  context "without date" do
    before do
      @race=Race.new
  end
    it "should not be valid" do
      @race.should_not be_valid
    end
  end

  context "with date" do
    before do
      @race=Race.new(date: "March 15, 2013")
      it "should be valid" do
        @race.should be_valid
      end
    end
  end
end