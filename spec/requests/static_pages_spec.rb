require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }
		
		it { should have_selector('h1', :text => 'Home Page') } 
		it { should have_selector('title', text:  full_title('')) }
		it { should_not have_selector('title', :text => '| Home') }
		
	end
	
	describe "Help page" do
		before { visit help_path }
		it { should have_selector('h1', :text => 'Help') }  
		it { should have_selector('title', text:  full_title('Help')) }
	end

	describe "About Us" do
		before{ visit about_path }
		it { should have_selector('h1', :text => 'About Us')}
		it { should have_selector('title', text:  full_title('About Us')) }
	end
	
	describe "Contact Us" do
		before { visit contact_path }
		it { should have_selector('h1', :text => 'Contact')}
		it { should have_selector('title', text:  full_title('Contact')) }
	end

    it "should have the right links on the layout" do
	    visit root_path
	    
	    click_link "About"
	    page.should have_selector 'title', text: full_title('About Us')
	    click_link "Help"
	    page.should have_selector 'title', text: full_title('Help')
	    click_link "Contact Us"
	    page.should have_selector 'title', text: full_title('Contact')
	    click_link "SignIn"
	    page.should have_selector 'title', text: full_title('Sign Up')
	    click_link "Home"
	    click_link "Sign Up!"
	    page.should have_selector 'title', text: full_title('Sign Up')
	    click_link "Home"
	    page.should have_selector 'h1', text: 'Home'
	end
end
