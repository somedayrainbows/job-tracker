require 'rails_helper'

RSpec.describe "Contact exists and has all attributes" do
  scenario "it exists and has all attributes" do
    contact = create(:contact)
    expect(contact).to be_valid
    expect(contact.position).to eq("director")
  end


  it "requires unique full_name" do
    contact_1 = create(:contact)
    contact_2 = build(:contact, full_name: contact_1.full_name)

    expect(contact_1).to be_valid
    expect(contact_2).to be_invalid
  end

  it "has a valid factory" do
    contact = create(:contact)

    expect(contact).to be_valid
  end

  describe Contact do
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:position) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
