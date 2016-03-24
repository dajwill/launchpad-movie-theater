class DropMovieTheaterShowing < ActiveRecord::Migration
  def change
    drop_table :movie_theater_showings
  end
end
