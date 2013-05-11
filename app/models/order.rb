class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type
  PAYMENT_TYPES = ["Check", "Credit Cart", "Purchase Order"]
end
