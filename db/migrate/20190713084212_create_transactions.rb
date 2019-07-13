class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.time :time
      t.string :role
      t.string :category
      t.float :amount

      t.timestamps
    end
  end
end
