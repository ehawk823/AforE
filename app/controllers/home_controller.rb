class HomeController < ApplicationController

  def lawyers
    @users = User.all
    @lawyers = []
    @users.each do |user|
      if user.designation == "lawyer"
        @lawyers << user
      end
    end
  end

end
