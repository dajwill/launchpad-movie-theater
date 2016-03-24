class AddBillingInfoToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :first_name, :string
    add_column :tickets, :last_name, :string
    add_column :tickets, :card_type, :string
    add_column :tickets, :card_number, :integer
    add_column :tickets, :cvc, :int
    add_column :tickets, :expiration_date, :date
  end
end
