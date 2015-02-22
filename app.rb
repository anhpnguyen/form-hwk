# app.rb
require 'sinatra'
require 'holidapi'

class DisplayHolidays< Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(country: 'us', year: 2016)
    erb :index
  end
end