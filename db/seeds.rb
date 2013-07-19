require 'csv'

CSV.foreach('shows.csv', :headers => true) do |row|

  show = Show.new(

  :name => row['name'], 
  :venue => row['venue'],
  :address => row['address'],
  :city => row['city'],
  :state => row['state'],
  :zip => row['zip'],
  :country => row['country'],
  :web_site => row['web_site'],
  :facebook_link => row['facebook_link'],
  :twitter_name => row['twitter_name'],
  :phone => row['phone'],
  :day => row['day'],
  :frequency => row['frequency'],
  :show_type => row['show_type'],
  :signup_time => row['signup_time'],
  :show_time => row['show_time'],
  :host_name => row['host_name'],
  :price => row['price'],
  :notes => row['notes'],
  :user_id => row['user_id'],
  :status => row['status'],
  :metro_area_id => row['metro_area_id'],

    )

  show.save

end

# THIS UPDATES RECORDS IN THE CONSOLE WITHOUT UPDATED_AT UPDATING ITSELF
# s.update_attribute(:updated_at, Time.now - 100000000)

 
# TUESDAY
# ** 8:30 - Dorsey's Locker, 5817 Shattuck Ave., Oakland -- Sign up before show
# ** Ladies Showcase at The Layover** - Second Tuesday of each month The Layover Oakland 8:30pm contact: Lydia Popovich for booking ladieslayover@gmail.com
# ** Neck Of The Woods 7:30pm - contact Danny Dechi: danny@dannydechi.com (make reservation for a spot weeks in advance to be in first ten)
# ** MILK 8pm - contact Eric Barry
# ** Open Improv @ SubMission 2183 Mission St, SF == Improv, not Stand Up, 8pm-10:30ishpm sylvanproductions.com http://www.facebook.com/events/320553641288388/
# ** Layover Comedy Night, 1517 Franklin, Downtown Oakland, 8:30pm, booked show. contact: Mike Spiegelman, comedy@oaklandlayover.com.
# ** St. Stephen's Green, Mountain View - 9:00pm sign up - contact: Tony Harrison
# ** Poor House Bistro @91 South Autumn Street  San Jose 6-9pm (Comedy/Music)
# ** Brew Haha @ EJ Phair, 300 Cumberland St., Pittsburg. SECOND TUESDAY OF EACH MONTH. Open mic 7 p.m., showcase to follow. https://www.facebook.com/brewhahacomedy
# ** Agave Comedy San Jose The Tequila room agavecomedy@gmail.com
# Email agavecomedy@gmail.com by Monday to get on list. Open mic/showcase every Tuesday
# **FAT TUESDAY'S @ The Bistro 1001 B Street, Hayward, CA 94541. FIRST TUESDAY OF THE MONTH. Openmic/ Signup at 7:30 performance at 8:00pm. Contact: Pearl at heymisspearl@gmail.com
# **TOMMY T's Comedy and Steakhouse @ 5104 Hopyard Rd Pleasanton, CA. Open Mic Competition every FIRST & THIRD Tuesdays of the month. $5 entry, sign ups at 6pm, starts at 7pm. Winner gets some cash.
 
# TUESDAY in Sacramento Area (contact before going to make sure):
# ** Rounders bar (Lucky Derby Casino), 7433 Greenback Lane, Citrus Heights. 7pm sign up, last Tuesday of the month. Contest. Contact: Robert Lovato
# ** Boston Lounge, Rancho Cordova. Starts at 11pm or later 
# ** Open mic/contest on FIRST Tuesday of each month, $100 for first $50 for second. Sign ups start at 9, contest at 10. Owner supplies judges. O'Riley's Pub, 211 North Cherokee Ln., Lodi. Contact: Gavin Meyers 209-304-0046
# ** Sauced open mic, Once a month, usually 3rd Tues BUT may be changing dates. CALL to get on the list and confirm the date. 7p sign-up, 8p show, www.facebook.com/SaucedCocktailHouse, 933-3729, at 879 Embarcadero Dr, El Dorado Hills 
 
# WEDNESDAY
# ** Above the Underground Comedy Showcase @ Underground Pub 2650 Broadway Street Redwood City 21+  Showcase 9:30-11pm Open Mic signup is 10:30pm contact Marcus CHUNK Bonfiglio for bookings. 
# ** A Couple Of N3rds Open Mic: 7:30pm sign up @ The Flying Pig 433 South Van Ness Avenue  San Francisco 
# ** Sylvan Open Mic @ Dirty Trix Saloon 408 Clement St. SF. Sign Ups @ 8:30pm , Mic @ 9pm-2am sylvanproductions.com http://www.facebook.com/events/304801279563436/
# ** Bobby D's Cocktail Lounge 8-10PM, sign up 7:30. Every Wednesday. 700 Winslow Street, Redwood City, CA 94063 Contact Thomas Mayfield
# ** USA Hostel 8pm - contact Stroy Moyd (95% foreigners who speak semi good english. good test see if material carries over)
# ** The Romane Event Comedy Show Showcase 8 pm (booked. Contact Paco Romane thru http://www.pacoromane.com/romaneevent_booking.html)
# ** "The G-Spot" at Gaia's Garden, 1899 Mendocino Avenue, Santa Rosa, CA 95404, 3rd Wednesday of each month at 9 pm - contact Helen Pachynski at Helen.Pachynski@gmail.com
# ** Masses, Walnut Creek 9pm - contact Greg Asdourian, booked show
# ** Pepperbelly's, W Texas Street, Fairfield. First 15 comics, sign up at 7:30pm. Contact: new: Comedian Big Chucklz on FB)
# ** Hump Day At The Stud, 399 9th St (at Harrison); 2nd & 4th Wed of the month 8 to 10 pm - for booking information join the Facebook group Hump Day At The Stud.
# ** First Wednesday of every month @ Clayton Valley Bowl Lounge in Concord.
# Showcase featuring 6 10 minute acts and a 30 minute headliner.
#  8pm to 10pm. Email Dan Mires for booking info: mireslikefires@gmail.com






 
