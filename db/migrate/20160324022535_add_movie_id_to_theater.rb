class AddMovieIdToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :movie_id, :integer
  end
end
