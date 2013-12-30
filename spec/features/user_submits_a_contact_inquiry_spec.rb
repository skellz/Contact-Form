require 'spec_helper'

feature "User submits a contact inquiry", %q{
  As a site visitor
  I want to contact the site's staff
  So that I can tell them how awesome they are
} do
  # * Acceptance Criteria:
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  context "with valid attributes" do 
    it "creates a contact inquiry with valid attributes" do 
      visit '/inquiries/new'

      fill_in "Email Address", with: "name@example.com"
      fill_in "Subject", with: "Problem"
      fill_in "Description", with: "This is not working"
      fill_in "First Name", with: "Juelz"
      fill_in "Last Name", with: "Santana"
      click_on "Create Inquiry"

      expect(page).to have_content "Inquiry was successfully created"

    end

    it " does not create a contact inquiry with invalid attributes" do 
      visit '/inquiries/new'
      click_on "Create Inquiry"

      expect(page).to have_content "can't be blank"
      
    end
  end
end