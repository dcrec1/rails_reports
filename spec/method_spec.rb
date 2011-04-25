require 'spec_helper'

describe Method do
  describe ".arguments" do
    it "should return an array with the arguments names" do
      Report.new.method(:revenue).arguments.should == %w(year month day)
    end    
  end
end
