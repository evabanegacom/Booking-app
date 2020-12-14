# frozen_string_literal: true

class AddFieldsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :string
  end
end
