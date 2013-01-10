require 'spec_helper'

describe ApplicationHelper do

	describe "full_title" do
	
		it "should include page title" do
			full_title('titulo').should =~ /titulo/
		end

		it "should include base title" do
			full_title('foo').should =~ /^RoR Tuts/
		end
		
		it "should not include a bar on the home page" do
			full_title('').should_not =~ /\|/
		end

	end
	
end