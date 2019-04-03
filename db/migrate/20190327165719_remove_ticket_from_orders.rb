class RemoveTicketFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_reference :orders, :ticket, foreign_key: true
  end
end
