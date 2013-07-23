class ShowsController < ApplicationController

	before_filter :find_show, :only => [:show, :edit, :update, :destroy]

  def new
  	@show = Show.new
  end

  def create
  	@show = Show.new(params[:show])
    @show.user = current_user
  	if @show.save
  	  redirect_to root_path
  	else
  	  render :new
  	end
  end

  def show

  end

  def edit
  end

  def destroy
    if current_user == @show.user
    	@show = Show.find(params[:id])
    	@show.destroy
  	end
    redirect_to :back, :notice => "the show has been deleted"
  end

  def update
    if current_user == @show.user
    	@show.update_attributes(params[:show])
    end

    render :show

  end

  private

  def find_show
  	@show = Show.find(params[:id])
  end

end
