class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_debt, :float
  end
end
