class Contact < ActiveRecord::Base
  validates :full_name, :position, :email, :company, presence: true
  validates :full_name, uniqueness: true

  belongs_to :comany
end
