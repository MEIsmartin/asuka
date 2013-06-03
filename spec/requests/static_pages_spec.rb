require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Asuka" }
  
	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit root_path
			page.should have_content('Sample App')
		end

		it "should have the right title" do
			visit root_path
			page.should_not have_selector('title',
				text: "#{base_title} | Home")
		end

	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit help_path
			page.should have_content('Help')
		end

		it "should have the right title" do
			visit help_path
			page.should have_selector('title', text: full_title('Help'))
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit about_path
			page.should have_content('About Us')
		end

	end

	describe "Contact page" do
		it "should have the content 'contact'" do
			visit contact_path
			page.should have_content('Contact')
		end
	end

end
