class AddTheaterIdToTheaterShowing < ActiveRecord::Migration
  def change
    add_column :theater_showings, :theater_id, :string
  end
end
