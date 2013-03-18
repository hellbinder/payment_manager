class PaymentSource < ActiveRecord::Base
  attr_accessible :description, :name, :payment_source_type_id
  has_one :payment_source_type, :primary_key => "payment_source_type_id", :foreign_key => "id"
  has_many :transactions
  validates_presence_of :name, :payment_source_type_id
  validates_associated :payment_source_type

  def total_amount
    self.transactions.sum(:amount) # assuming amount is the column holding expenses amount
  end

  def total_by_month()
    Transaction.sum(:amount, conditions: {created_at:
      (Date.today.at_beginning_of_month..Date.today.at_end_of_month)})
  end
end
