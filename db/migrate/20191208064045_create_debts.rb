class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.float :total_debt
      t.string :debt_to
      t.text :description
      t.float :payment_amount
      t.float :interest_rate
      t.integer :total_number_payments
      t.float :amount_remaining
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
