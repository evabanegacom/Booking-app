class AddFieldsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :city, :string
    add_column :bookings, :username, :string
    add_column :bookings, :model, :string
  end
end
