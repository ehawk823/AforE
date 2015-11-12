class UsersController < ApplicationController


  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.name = params[:user][:name]
    current_user.location = params[:user][:location]
    current_user.title = params[:user][:title]
    current_user.save
    redirect_to '/companies/new'
  end

end
