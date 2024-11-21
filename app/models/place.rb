class Place < ApplicationRecord
  belongs_to :user
  has_many :ticks
  validates :name, :latitude, :longitude, presence: true
end
