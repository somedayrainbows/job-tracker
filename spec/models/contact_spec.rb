require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "has a valid factory" do
    expect(contact).to be_valid
  end

  describe Contact do
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:position) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
