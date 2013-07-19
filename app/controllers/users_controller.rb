class UsersController < ApplicationController

  def show
  	@shows = current_user.shows.order('updated_at DESC')
  	@user = current_user
  end

end