# app.rb
require 'sinatra'
require 'holidapi'
require 'date'

class DisplayHolidays < Sinatra::Base
  get '/' do
  	params[:country] ||= 'us'
  	params[:year] ||= 2015
  	params[:month] ||= 3
    @holidays = HolidApi.get(params)
    erb :index
  end
end