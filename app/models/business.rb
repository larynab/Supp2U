class Business < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one :menu
  has_one :schedule
  has_one_attached :image

  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :street, presence: true
  validates :zipcode, presence: true

end