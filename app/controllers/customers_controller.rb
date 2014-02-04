class CustomersController < ApplicationController
  respond_to :html

  def index
    @customer = Customer.all
  end

  def new
    #@customer = Customer.new(:first_name, :last_name, :zipcode, :email)
  end

  def create
    @customer = sign_up(customer_params)
    sign_in(@customer)
    respond_with @customer, location: root_path  	
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def update
  end
  
  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end

  
end
