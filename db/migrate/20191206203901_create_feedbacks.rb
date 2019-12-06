class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :phone_number
      t.text :comments
      t.string :email

      t.timestamps
    end
  end
end
