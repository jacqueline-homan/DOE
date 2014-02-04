class Customer < ActiveRecord::Base
  attr_accessor :email
  def new_customer
  	@customer = Customer.new(params[:first_name, :last_name, :email])
  end

  private
  def customer_params
  	@customer = Customer.find(params[:email])
  end
end
