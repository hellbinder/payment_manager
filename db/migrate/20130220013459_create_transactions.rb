class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :payment_source
      t.decimal :amount
      t.text :memo

      t.timestamps
    end
    add_index :transactions, :payment_source_id
  end
end
