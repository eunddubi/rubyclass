require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'rest-client'
require 'nokogiri'
require 'csv'
require 'date'
require 'uri'

get '/' do
  erb :index
end

get '/welcome/:name' do
  @name = params[:name]
  @time = Time.now.to_s
  erb :welcome
end

get '/funshop' do
  erb :funshop
end

get '/result' do
  @keyword = params[:keyword]
  url ="https://www.funshop.co.kr/goods/search?keyword=#{@keyword}}"
  url = URI.encode(url)
  response = RestClient.get(url)
  doc = Nokogiri::HTML(response)
  @count = doc.css("#container > div.total-search-stats.clear-obj > p > em:nth-child(2)")
  erb :result
end
