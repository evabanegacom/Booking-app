class AddAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :avatar, :string
  end
end
