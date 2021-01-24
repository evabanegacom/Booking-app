# frozen_string_literal: true

class AddUsersToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :user_id, :integer
  end
end
