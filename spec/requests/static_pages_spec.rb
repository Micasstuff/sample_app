require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
		it "should have the h1 'Home Page'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Home Page')
		end
		it "should have the right title" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "RoR Tuts | Home")
		end
	end
	
	describe "Help page" do
		it "should have the h1 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('h1', :text => 'Help')
		end
	end

	describe "About Us" do
		it "should have the h1 'About Us'" do
		visit '/static_pages/about'
		page.should have_selector('h1', :text => 'About Us')
		end
	end
	
	describe "Contact Us" do
		it "should have the h1 'Contact Us'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => 'Contact Us')
		end
	end

end
