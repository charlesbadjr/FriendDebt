class AddRelationToDebt < ActiveRecord::Migration[5.2]
  def change
    add_reference :debts, :user, index: true, foreign_key: true
  end
end
