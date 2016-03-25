class RemoveCardNumberToTicket < ActiveRecord::Migration
  def change
    remove_column :tickets, :card_number, :string
  end
end
