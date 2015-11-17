class MyDevise::RegistrationsController < Devise::RegistrationsController

  def create
    super
    @user.designation = params[:user][:designation]
    @user.save
  end


end
