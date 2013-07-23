class PagesController < ApplicationController

helper :all

  def index
    @shows = Show.where( :updated_at => (DateTime.now - 4.months)..(DateTime.now) ).order("updated_at DESC")
    @metro_areas = MetroArea.all
  end

  def metro_area
    metro_area = MetroArea.where(:id => (params[:metro_area]))
    @shows = Show.where(:updated_at => (DateTime.now - 4.months)..(DateTime.now), :metro_area_id => metro_area ).order("updated_at DESC")
    @metro_areas = MetroArea.all
    render 'index'
  end

  def filter
    conditions = { :updated_at => (DateTime.now - 4.months)..(DateTime.now)}
    conditions[:metro_area_id] = params[:metro] unless params[:metro].blank?
    conditions[:day] = params[:day] unless params[:day].blank?
    conditions[:show_type] = params[:type] unless params[:type].blank?
    @shows = Show.find(:all, :conditions => conditions, :order => 'updated_at DESC')
    @metro_areas = MetroArea.all
    render 'index'
  end

end 

