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
    forecast_data = data["channel"]["item"]["forecast"]
    # puts forecast_data.inspect
    return forecast_data
  end

  def get_sun_data(data)
    sun_data = Hash.new
    sun_data.store(:sunrise,data["channel"]["astronomy"]["sunrise"])
    sun_data.store(:sunset,data["channel"]["astronomy"]["sunset"])
    return sun_data
  end
end

class WeatherChecker
  include WeatherDataParser
  attr_reader :current_city, :current_state, :date, :weather_data


  def initialize
      puts "Weather Report App"
      puts "%"*40
      @date = "date" # Set today's date.
      # Set Default Dates
      @current_city = "San Jose"
      @current_state = "CA"
      @day_display_width = 23
      retrieve_weather_data(current_city,current_state)
  end

  def run
    loop do
      puts "Menu"
      puts "-"*40
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
        display_sun_data
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

  def show_day(data,num_days)
    # Data description
    puts weather_data["channel"]["item"]["title"]
    # SETUP: Get Forecast Data
    forecast_data = get_forecast(data)
    day_output_array = Array.new
    # Build Output Array
    num_days.times {day_output_array.push(Array.new)}
    # Start Bar
    num_days.times do |day_index|
      day_output_array[day_index].push("%"*@day_display_width) #0
      # DAY
      # Build 'day' string with text padding, use Day index to determine day value
      day_string = forecast_data[day_index]["day"]
      date_string = forecast_data[day_index]["date"]
      day_string = "%" + day_string.center(@day_display_width-2) + "%"
      date_string = "%" + date_string.center(@day_display_width-2) + "%"
      day_output_array[day_index].push(day_string) #1
      day_output_array[day_index].push(date_string) #2
      # Bottom Separator
      day_output_array[day_index].push("%"*@day_display_width) #3
    end
    # OUTPUT to Screen
    4.times do |line_index| # For Each Line
      line_output = ""
      day_output_array.each do |day| # EACH Day
        line_output += day[line_index]
      end
      puts line_output
    end
  end

  def show_sun_data(data)
    # day_index.times do |day|
      # Build Sun Data Strings from day_index,date, and weather data
      sun_data = get_sun_data(data)
      puts "% Sunrise %#{sun_data[:sunrise].center(@day_display_width-12)}%"
      puts "% Sunset  %#{sun_data[:sunset].center(@day_display_width-12)}%"
      # Bottom Separator
      puts "%"*@day_display_width
    # end
  end

  def show_conditions(data,num_days)
    # SETUP: Get Forecast Data
    forecast_data = get_forecast(data)
    conditions_output_array = Array.new
    # Build Output Array
    num_days.times {conditions_output_array.push(Array.new)}
    # Start Bar
    num_days.times do |day_index|
      condition_string = forecast_data[day_index]["text"]
      condition_string = "%" + condition_string.center(@day_display_width-2) + "%"
      conditions_output_array[day_index].push(condition_string) #0
      # Bottom Separator
      conditions_output_array[day_index].push("%"*@day_display_width) #1
    end
    # OUTPUT to Screen
    2.times do |line_index| # For Each Line
      line_output = ""
      conditions_output_array.each do |day| # EACH Day
        line_output += day[line_index]
      end
      puts line_output
    end
  end

  def show_temps(data,num_days)
    # SETUP: Get Forecast Data
    forecast_data = get_forecast(data)
    temp_output_array = Array.new
    # Build Output Array
    num_days.times {temp_output_array.push(Array.new)}
    # Start Bar
    num_days.times do |day_index|
      low_string = forecast_data[day_index]["low"]
      low_title = "Low"
      high_string = forecast_data[day_index]["high"]
      high_title = "High"
      low_string = "%" + low_title.center((@day_display_width-3)/2) + "%" + low_string.center((@day_display_width-3)/2) + "%"
      high_string = "%" + high_title.center((@day_display_width-3)/2) + "%" + high_string.center((@day_display_width-3)/2) + "%"

      temp_output_array[day_index].push(low_string) #0
      temp_output_array[day_index].push(high_string) #1

      # Bottom Separator
      temp_output_array[day_index].push("%"*@day_display_width) #2
    end
    # OUTPUT to Screen
    3.times do |line_index| # For Each Line
      line_output = ""
      temp_output_array.each do |day| # EACH Day
        line_output += day[line_index]
      end
      puts line_output
    end
  end

  def request_location
    @current_city = ask_for_input("Please provide a City")
    @current_state = ask_for_input("Please provide the City's State")
    retrieve_weather_data(current_city,current_state)
    puts "Weather Ready for #{current_city}, #{current_state}" if @weather_data != nil
  end

  def display_sun_data
    show_day(weather_data,1)
    show_sun_data(weather_data)
  end

  def display_forecast(num_days)
    show_day(weather_data,num_days)
    show_temps(weather_data,num_days)
    show_conditions(weather_data,num_days)
  end

end

weatherapp = WeatherChecker.new
weatherapp.run
