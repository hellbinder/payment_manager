class CreatePaymentSourceTypes < ActiveRecord::Migration
  def change
    create_table :payment_source_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
