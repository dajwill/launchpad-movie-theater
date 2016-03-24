class CreateMovieTheaterShowings < ActiveRecord::Migration
  def change
    create_table :movie_theater_showings do |t|
      t.time :time

      t.timestamps null: false
    end
  end
end
