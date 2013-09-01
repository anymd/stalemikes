class UsersController < ApplicationController

  def show
  	@shows = current_user.shows.order('verified_at DESC')
  	@user = current_user
  end

end