class Movie < ActiveRecord::Base
  has_many :movie_theaters, dependent: :destroy
  has_many :theaters, through: :movie_theaters
  has_many :tickets
end
