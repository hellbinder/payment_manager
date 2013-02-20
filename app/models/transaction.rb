class Transaction < ActiveRecord::Base
  belongs_to :payment_source
  attr_accessible :amount, :memo, :payment_source_id
  validates_presence_of :amount, :payment_source_id
  validates :amount, format: { with: /^\d+??(?:\.\d{0,2})?$/ },
            numericality: {greater_than: 0}
end
