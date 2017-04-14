class Job < ActiveRecord::Base
  validates :title, :level_of_interest, :city, presence: true

  belongs_to :company
  has_many :comments, dependent: :destroy
  belongs_to :category
  has_and_belongs_to_many :tags
end
