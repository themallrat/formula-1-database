require "spec_helper" 

describe "driver" do
  context "without name" do 
    before do
      @driver=Driver.new
    end
    it "should not be valid" do
      @driver.should_not be_valid
    end
  end

  context "with name" do
    before do
      @driver=Driver.new(name: "Fernando Alonso")
    end
    it "should be valid" do
      @driver.should be_valid
    end
  end

end
