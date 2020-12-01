class Company < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  validates :name, :industry, presence: true
  has_one_attached :photo
end
