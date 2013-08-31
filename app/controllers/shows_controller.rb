class ShowsController < ApplicationController

	before_filter :find_show, :only => [:show, :edit, :update, :destroy]
  before_filter :default_image, :only => [:update]
  
  def new
  	@show = Show.new
  end

  def create
  	@show = Show.new(params[:show])
    @show.end_time = nil if !params[:include_end_time]
    @show.user = current_user
    @show.verified_at = Time.now
  	if @show.save
  	  redirect_to root_path
  	else
      flash[:notice] = "Please fill in all required fields (highlighted in red)"
  	  render :new
  	end
  end

  def show

  end

  def edit
    if current_user
      render 'edit'
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user == @show.user
    	@show = Show.find(params[:id])
    	@show.destroy
  	end
    redirect_to user_path, :notice => "the show has been deleted"
  end

  def update
    if current_user == @show.user
    	@show.update_attributes(params[:show])
      @show.verified_at = Time.now
      @show.end_time = nil if !params[:include_end_time]
      if @show.save
        render :show
      else
        flash[:notice] = "Please fill in all required fields (highlighted in red)"
        render :new
      end
    end
  end

  private

  def find_show
  	@show = Show.find(params[:id])
  end

  def default_image
    @show.filepicker_url ||= "http://lorempixel.com/460/140/nightlife/" + [*2..10].sample.to_s
    @show.save
  end

end
