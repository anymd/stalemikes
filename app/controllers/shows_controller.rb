class ShowsController < ApplicationController

	before_filter :find_show, :only => [:show, :edit, :update, :destroy]
  before_filter :default_image, :only => [:update]
  
  def new
  	@show = Show.new
    @show.country = 'United States'
  end

  def create
  	@show = Show.new(params[:show])
    @show.status =  1
    @show.end_time = nil if !params[:include_end_time]
    @show.filepicker_url = default_image if !@show.filepicker_url
    @show.user = current_user
    @show.verified_at = Time.now
    @history = History.new(:set_attributes => params[:show], :user_id => current_user.id)
  	if @show.save
      @history.show_id = @show.id
      @history.save
  	  render :show
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
    redirect_to root_path
   #  if current_user == @show.user
   #  	@show = Show.find(params[:id])
   #  	@show.destroy
  	# end
   #  redirect_to user_path, :notice => "the show has been deleted"
  end

  def update
    if current_user == @show.user
    	@show.update_attributes(params[:show])
      @show.filepicker_url = default_image if !@show.filepicker_url
      
      if @show.verified_at < Time.now - 1.week
        @show.verified_at = Time.now
      end
      
      @show.end_time = nil if !params[:include_end_time]
      @history = History.new(:set_attributes => params[:show], :user_id => current_user.id, :show_id => @show.id)
      if @show.save
        @history.save
        render :show
      else
        flash[:notice] = "Please fill in all required fields (highlighted in red)"
        render :new
      end
    else
      if current_user.friend_count >= 100 || current_user.admin?
        @show.verified_at = Time.now
        verification = Verification.new(:user_id => current_user.id, :show_id => @show.id)
        @show.verifications << verification
        @show.save
      end
      render :show
    end
  end

  def calendar
    params[:metro] = MetroArea.first.id if params[:metro].blank?
    @shows = Show.find_by_metro_area_id(params[:metro])
    @metro = MetroArea.find(params[:metro])
  end

  private

  def default_image
    filename = 'https://www.filepicker.io/api/file/' + [
      'PrJX9kv0Qo2Kw0ILIw2B',
      'RigJkd7uQ82WPHPDSNLb',
      'ZNcwaZV9SQmyFyHIyXML',
      '1IzvVzXPRqWei3lDeHff',
      'DTCVgG8LT8suHYdawITU',
      'Jx0rw3ezRZSC8dUHWK3W'].sample
  end

  def find_show
  	@show = Show.find(params[:id])
  end

end
