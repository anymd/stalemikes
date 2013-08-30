require 'csv'

CSV.foreach('shows.csv', :headers => true) do |row|

  show = Show.new(

  :name => row['name'], 

    )

  show.save

end
