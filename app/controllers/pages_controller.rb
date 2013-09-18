class PagesController < ApplicationController

helper :all

  def index
    conditions = { :verified_at => (DateTime.now - 6.months)..(DateTime.now)}
    conditions[:metro_area_id] = params[:metro] unless params[:metro].blank?
    conditions[:day] = params[:day] unless params[:day].blank?
    
    if params[:view] == 'calendar' && params[:metro].blank?
      params[:metro] = 1
    end

    if params[:status] == 'all' 
    else
      conditions[:status] = [1]
    end
    conditions[:show_type] = params[:type] unless params[:type].blank?
    @shows = Show.find(:all, :conditions => conditions, :order => 'verified_at DESC')
    @metro_areas = MetroArea.all
  end

  def filter
    view = params[:view]
    metro = params[:metro]
    day = params[:day]
    type = params[:type]
    not_active = params[:not_active]
    redirect_to :controller => 'pages', :action => 'index', :view => view, :metro => metro, :day => day, :type => type, :not_active => not_active
  end

end 

