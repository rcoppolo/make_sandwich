require 'spec_helper'

describe Sandwich do
	before :each do
		@sandwich = Factory.create(:sandwich)
	end

	it "has a valid factory" do
		@sandwich.should be_valid
	end

	it "should be invalid without a kind" do
		@sandwich.kind = nil
		@sandwich.should_not be_valid
	end

	it "should have one of the right kinds" do
		@sandwich.kind = "Bad sandwich kind"
		@sandwich.should_not be_valid
	end

end
