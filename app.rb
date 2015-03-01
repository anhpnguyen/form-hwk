# app.rb
require 'sinatra'
require 'holidapi'
require 'date'

class DisplayHolidays < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(params)
    erb :index
  end
end