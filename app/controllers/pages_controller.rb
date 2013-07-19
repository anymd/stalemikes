class PagesController < ApplicationController

  def index
    @shows = Show.where( :updated_at => (DateTime.now - 4.months)..(DateTime.now) ).order("updated_at DESC")
  end



end 

