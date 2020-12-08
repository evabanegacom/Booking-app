class AcahgeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cars, :type, :category
  end
end
