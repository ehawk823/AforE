class UsersController < ApplicationController


  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user[:name] = params[:user][:name]
    current_user[:location] = params[:user][:location]
    current_user[:title] = params[:user][:title]
    current_user.save
    if current_user.designation == "entrepreneur"
      redirect_to '/companies/new'
    elsif current_user.designation == "lawyer"
      redirect_to '/'
    else redirect_to '/'
    end
  end




end
