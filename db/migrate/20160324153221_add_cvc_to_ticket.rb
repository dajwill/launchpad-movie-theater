class AddCvcToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :cvc, :integer
  end
end
