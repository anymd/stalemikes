class PagesController < ApplicationController

helper :all

  def index
    conditions = { :verified_at => (DateTime.now - 6.months)..(DateTime.now)}
    conditions[:metro_area_id] = params[:metro] unless params[:metro].blank?
    conditions[:day] = params[:day] unless params[:day].blank?
    if params[:status] == 'all' 
    else
      conditions[:status] = 1
    end
    conditions[:show_type] = params[:type] unless params[:type].blank?
    @shows = Show.find(:all, :conditions => conditions, :order => 'status, verified_at DESC')
    @metro_areas = MetroArea.all
  end



end 

