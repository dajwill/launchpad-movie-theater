class AddCardNumberToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :card_number, :string
  end
end
