class PagesController < ApplicationController

helper :all

  def index
    conditions = { :updated_at => (DateTime.now - 4.months)..(DateTime.now)}
    conditions[:metro_area_id] = params[:metro] unless params[:metro].blank?
    conditions[:day] = params[:day] unless params[:day].blank?
    conditions[:show_type] = params[:type] unless params[:type].blank?
    @shows = Show.find(:all, :conditions => conditions, :order => 'updated_at DESC')
    @metro_areas = MetroArea.all
  end



end 

