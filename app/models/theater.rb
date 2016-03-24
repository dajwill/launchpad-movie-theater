class Theater < ActiveRecord::Base
  has_one :movie_theater
  has_one :movie, through: :movie_theater
  has_many :showings

  validates_presence_of :capacity
  accepts_nested_attributes_for :movie_theater
  accepts_nested_attributes_for :showings, reject_if: :all_blank, allow_destroy: true
end
