class Customer < ActiveRecord::Base
  attr_accessor :email

  has_many :utilities  
end
