class Customer < ActiveRecord::Base
  attr_accessor :email
  def new_user
  	@user = User.new(name: "Joe Customer", email: "joe@example.com")
  end

  def user
  	@user = User.find(params[:email])
  end
end
