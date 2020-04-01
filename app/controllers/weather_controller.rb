class WeatherController < ApplicationController

  def show
    response = RestClient.get "https://api.darksky.net/forecast/#{ENV['DARK_SKY_API_KEY']}/#{params[:latitude]},#{params[:longitude]}?exclude=minutely,hourly,daily,alerts,flags"
    weather = JSON.parse(response)
    render json: weather["currently"]
  end

end
