class CreatePaymentSources < ActiveRecord::Migration
  def change
    create_table :payment_sources do |t|
      t.string :name
      t.integer :payment_source_type_id
      t.text :description

      t.timestamps
    end
  end
end
