require 'weather_hash' # Requires a weather_hash gem installed prior to usage

# Write a program that allows the user to enter a city and state and displays
# 1) sunrise and sunset for that city.
# Write a program that allows the user to enter a city and state and displays
# 2) the 7 day forecast in an easy to read format.
# Include the day of the week, high, low, and text (e.g. "Partly Cloudy") for each day.

#Usage :
# weather_data = WeatherHash.lookup("Chicago", "IL")

# # START
# %%%%%%%%%%%%%%%%%%%
# # DAY
# %       Day       %
# %%%%%%%%%%%%%%%%%%%
# # TEMPS
# % High  %   80F   %
# % Low   %   60F   %
# %%%%%%%%%%%%%%%%%%%
# # CONDITIONS
# %   Mostly Sunny  %
# %%%%%%%%%%%%%%%%%%%
# # SUN DATA
# % Sunrise % 6:00A %
# % Sunset  % 6:00P %
# %%%%%%%%%%%%%%%%%%%

module WeatherDataParser
  def get_forecast(data)
  end

  def get_sun_data(data)
    return "Sundata"
  end
end

class WeatherChecker
  include WeatherDataParser
  attr_reader :current_city, :current_state, :date, :weather_data


  def initialize
      @date = "date" # Set today's date.
      # Set Default Dates
      @current_city = "San Jose"
      @current_state = "CA"
      @day_display_width = 20
      retrieve_weather_data(current_city,current_state)
  end

  def run
    loop do
      puts "-"*40
      puts "Weather Report App"
      # Menu
      puts "l: Set New Location"
      puts "f: Get 7-Day Forecast"
      puts "s: Get Today's Sun Data"
      puts "e : Exit"

      print "Enter your choice : "
      input = gets.chomp
      case input.downcase
      when 'l'
        request_location()
      when 'f'
        display_forecast(7)
      when 's'
        display_sun_data(1)
      when 'e'
        break
      end
      gets
    end
  end

  def ask_for_input(prompt)
    puts prompt + " :"
    word = gets.chomp
    return word
  end

  def retrieve_weather_data(city,state)
    @weather_data = WeatherHash.lookup(city, state)
  end

  def show_day(data,day_index)
    puts weather_data["channel"]["item"]["title"]
    # day_output = Array.new
    # lines = 0
    # day_index.times do |day|
      # line_array = Array.new if day == 0
      #START
    # line_array[day]
    puts "%"*@day_display_width
    # DAY
    # Build 'day' string with text padding, use Day index to determine day value
    puts "%       Day       %"
    # Bottom Separator
    puts "%"*@day_display_width
    # end
  end

  def show_sun_data(data,day_index)
    # day_index.times do |day|
      # Build Sun Data Strings from day_index,date, and weather data
      # sun_data = get_sun_data(weather_data)
      puts sun_data.inspect
      puts "% Sunrise % 6:00A %"
      puts "% Sunset  % 6:00P %"
      # Bottom Separator
      puts "%"*@day_display_width
    # end
  end

  def show_conditions(data,day_index)
    day_index.times do |day|
      #
      # Bottom Separator
      puts "%"*@day_display_width
    end
  end

  def show_temps(data,day_index)
    day_index.times do |day|
      #
      # Bottom Separator
      puts "%"*@day_display_width
    end
  end

  def request_location
    @current_city = ask_for_input("Please provide a City")
    @current_state = ask_for_input("Please provide the City's State")
    retrieve_weather_data(current_city,current_state)
  end

  def display_sun_data(num_days)
    show_day(weather_data,num_days)
    show_sun_data(weather_data,num_days)
  end

  def display_forecast(num_days)
    show_day(weather_data,num_days)
    show_temps(weather_data,num_days)
    show_conditions(weather_data,num_days)
  end

end





weatherapp = WeatherChecker.new
# weatherapp.run
puts weatherapp.weather_data
puts weatherapp.display_sun_data(1)
