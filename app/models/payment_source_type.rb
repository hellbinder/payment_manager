class PaymentSourceType < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :payment_sources, :primary_key => "id"
end
