class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.float :actual_payment_amount
      t.float :amount_interest
      t.float :amount_principle
      t.float :total_todate
      t.text :comment
      t.boolean :paid
      t.belongs_to :debt, foreign_key: true

      t.timestamps
    end
  end
end
