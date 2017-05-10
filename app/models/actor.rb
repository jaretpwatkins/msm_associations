class Actor < ApplicationRecord
  validates :name, uniqueness: { scope: :dob }, presence: true

  has_many :characters
  has_many :movies, :through => :characters
end
