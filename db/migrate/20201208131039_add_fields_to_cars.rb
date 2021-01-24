# frozen_string_literal: true

class AddFieldsToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :speed, :string
    add_column :cars, :price, :string
    add_column :cars, :country, :string
  end
end
