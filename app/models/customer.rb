class Customer < ActiveRecord::Base
  attr_accessible :email

  has_many :utilities  
end
