class Director < ApplicationRecord
  validates :name, uniqueness: { scope: :dob}, presence: true
  has_many :movies, :class_name => "Movie", :foreign_key => "director_id"
end
