# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.string :type

      t.timestamps
    end
  end
end
