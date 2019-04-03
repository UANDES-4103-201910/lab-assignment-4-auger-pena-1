class AddOrderToTickets < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :order, foreign_key: true
  end
end
