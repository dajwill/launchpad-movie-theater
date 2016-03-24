class RemoveBadColumnsFromTicket < ActiveRecord::Migration
  def change
    remove_column :tickets, :cvc, :int
  end
end
