class DropTheaterShowing < ActiveRecord::Migration
  def change
    drop_table :theater_showings
  end
end
