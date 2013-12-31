require 'spec_helper'

feature "Delete a contact inquiry", %q{
  As an admin
  I want to delete an inquiry
  So that I can remove spam or other undesirable inquiries
} do 
  # Acceptance Criteria:

  # I can remove an item from the listing of contact inquiries

  it "deletes an inquiry" do
    Inquiry.destroy_all
    FactoryGirl.create(:inquiry)

    visit '/inquiries/'
    expect(Inquiry.count).to eq(1)
    click_on 'Destroy'
    #click_on 'OK'

    expect(Inquiry.count).to eq(0)
  end
end

