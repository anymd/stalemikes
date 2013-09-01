# Form helper integration

ActiveEnum.setup do |config|

  # Extend classes to add enumerate method
  config.extend_classes = [ ActiveRecord::Base ]

  # Return name string as value for attribute method
  config.use_name_as_value = true

  # Storage of values (:memory, :i18n)
  # config.storage = :memory
  

end

ActiveEnum.define do

  enum(:show_type) do
    value 1 => 'Open mic'
    value 2 => 'Pre-booked'
  end

  enum(:status) do
    value 1 => 'Active'
    value 2 => 'Starting soon'
    value 3 => 'On hiatus'
    value 4 => 'Canceled'
  end

  enum(:frequency) do
    value 1 => 'Weekly'
    value 2 => '1st'
    value 3 => '2nd'
    value 4 => '3rd'
    value 5 => '4th'
    value 6 => '1st & 3rd'
    value 7 => '2nd & 4th'
  end

  enum(:day) do
    value 1 => 'Sunday'
    value 2 => 'Monday'
    value 3 => 'Tuesday'
    value 4 => 'Wednesday'
    value 5 => 'Thursday'
    value 6 => 'Friday'
    value 7 => 'Saturday'
  end

  enum(:state) do
    value 1 => 'Alabama'
    value 2 => 'Alaska'
    value 3 => 'American Samoa'
    value 4 => 'Arizona'
    value 5 => 'Arkansas'
    value 6 => 'California'
    value 7 => 'Colorado'
    value 8 => 'Connecticut'
    value 9 => 'Delaware'
    value 10 => 'District of Columbia'
    value 11 => 'Florida'
    value 12 => 'Georgia'
    value 13 => 'Guam'
    value 14 => 'Hawaii'
    value 15 => 'Idaho'
    value 16 => 'Illinois'
    value 17 => 'Indiana'
    value 18 => 'Iowa'
    value 19 => 'Kansas'
    value 20 => 'Kentucky'
    value 21 => 'Louisiana'
    value 22 => 'Maine'
    value 23 => 'Maryland'
    value 24 => 'Massachusetts'
    value 25 => 'Michigan'
    value 26 => 'Minnesota'
    value 27 => 'Mississippi'
    value 28 => 'Missouri'
    value 29 => 'Montana'
    value 30 => 'Nebraska'
    value 31 => 'Nevada'
    value 32 => 'New Hampshire'
    value 33 => 'New Jersey'
    value 34 => 'New Mexico'
    value 35 => 'New York'
    value 36 => 'North Carolina'
    value 37 => 'North Dakota'
    value 38 => 'Northern Marianas Islands'
    value 39 => 'Ohio'
    value 40 => 'Oklahoma'
    value 41 => 'Oregon'
    value 42 => 'Pennsylvania'
    value 43 => 'Puerto Rico'
    value 44 => 'Rhode Island'
    value 45 => 'South Carolina'
    value 46 => 'South Dakota'
    value 47 => 'Tennessee'
    value 48 => 'Texas'
    value 49 => 'Utah'
    value 50 => 'Vermont'
    value 51 => 'Virginia'
    value 52 => 'Virgin Islands'
    value 53 => 'Washington'
    value 54 => 'West Virginia'
    value 55 => 'Wisconsin'
    value 56 => 'Wyoming'
  end

end

