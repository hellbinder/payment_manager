class Account < ActiveRecord::Base
  attr_accessible :balance, :description, :name, :timestamp
end
