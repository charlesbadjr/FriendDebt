class RemoveDebtFromAccount < ActiveRecord::Migration[5.2]
  def change
    remove_column :debts, :account_id
  end
end

