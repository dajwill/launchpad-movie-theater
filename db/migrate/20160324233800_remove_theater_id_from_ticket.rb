class RemoveTheaterIdFromTicket < ActiveRecord::Migration
  def change
    remove_column :tickets, :theater_id, :integer
  end
end
