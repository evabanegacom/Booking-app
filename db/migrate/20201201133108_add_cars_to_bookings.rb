# frozen_string_literal: true

class AddCarsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :car_id, :integer
  end
end
