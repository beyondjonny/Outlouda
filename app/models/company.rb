class Company < ApplicationRecord
  belongs_to :user
  validates :name, :industry, presence: true
  has_one_attached :photo
end
