# app.rb
require 'sinatra'
require 'holidapi'
require 'date'

class DisplayHolidays < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
    @birth = HolidApi.get(country: 'us', year: 1994, month: 3)
    erb :index
  end
end