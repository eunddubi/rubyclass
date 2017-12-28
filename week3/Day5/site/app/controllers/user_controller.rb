class UserController < ApplicationController
  def new
  end

  def create
    User.create(
      :email => params[:email],
      :name => params[:name],
      :password => params[:password]
    )
    redirect_to '/'
  end

  def login

  end

  def login_process
  end

end
