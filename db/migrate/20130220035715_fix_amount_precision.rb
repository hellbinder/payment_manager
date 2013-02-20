class FixAmountPrecision < ActiveRecord::Migration
  def change
    change_column :transactions, :amount, :decimal, :precision => 16, :scale => 2
  end
end
