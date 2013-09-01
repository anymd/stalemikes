module ApplicationHelper

require 'date'

  def calculate_age(show_date)

    days = 
        Date.parse(Time.now.strftime('%Y-%m-%d %I:%M:%S')) - 
    	Date.parse(show_date.strftime('%Y-%m-%d %I:%M:%S'))
  	
  	return days.to_i.abs
  
  end

  def calculate_days(date)
    a=room.expiry_date.strftime("%Y-%m-%d")
    b=room.created_at.strftime("%Y-%m-%d")
    a=Date.parse(a)
    b=Date.parse(b)
    days=(a-b).to_i
    return days
  end
  
end
