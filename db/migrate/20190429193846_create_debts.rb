class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.string :index
      t.integer :amount
      t.integer :payments
      t.integer :amountLeft
      t.string :debteeId
      t.string :description

      t.timestamps
    end
  end
end
