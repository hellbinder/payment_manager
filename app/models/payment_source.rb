class PaymentSource < ActiveRecord::Base
  attr_accessible :description, :name, :payment_source_type_id
  has_one :payment_source_type, :primary_key => "payment_source_type_id", :foreign_key => "id"
  has_many :transactions
  validates_presence_of :name, :payment_source_type_id
  validates_associated :payment_source_type
end
