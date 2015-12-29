class UsersController < ApplicationController


  def edit
    @user = User.find(params[:id])
  end

  def update
    binding.pry
    specialties = params["user"]["specialties"]
    interests = params["user"]["interests"]
    if specialties != nil
      current_user.assign_specialties(specialties)
    end
    if interests != nil
      current_user.assign_interests(interests)
    end
    if current_user[:name] == nil
      current_user[:name] = params[:user][:name]
      current_user[:location] = params[:user][:location]
      current_user[:title] = params[:user][:title]
      current_user.avatar = params[:user][:avatar]
    end
    current_user.save
    if current_user.designation == "entrepreneur"
      redirect_to '/companies/new'
    elsif current_user.designation == "lawyer" && current_user.interests.length == 0
      redirect_to '/users/lawyerprefs'
    else redirect_to current_user
    end
  end




end
