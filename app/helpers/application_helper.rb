module ApplicationHelper

require 'date'

  def calculate_age(show_date)

    days = 
        Date.parse(Time.now.strftime('%Y-%m-%d %I:%M:%S')) - 
    	Date.parse(show_date.strftime('%Y-%m-%d %I:%M:%S'))
  	
  	return days.to_i.abs
  
  end
  
end
