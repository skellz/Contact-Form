require 'spec_helper'

feature "Browse contact inquires", %q{
    As an admin
    I want to review contact inquiries
    So that I can respond or take action
  } do
    # Acceptance Criteria:

    # I can see a list of all contact inquiries

  it 'shows a list of all inquires' do 
    FactoryGirl.create(:inquiry)
    
    visit '/inquiries/'

    expect(page).to have_content "test@me.com"
  end
end