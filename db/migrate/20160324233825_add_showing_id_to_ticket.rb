class AddShowingIdToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :showing_id, :integer
  end
end
