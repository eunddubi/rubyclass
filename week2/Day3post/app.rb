require 'sinatra'
require 'sinatra/reloader'
require 'csv'

get '/' do
  send_file "index.html"
end

#code
#/post => 글 쓸 수 있는 곳
get '/post' do
  erb :post
end

#/complete 글 완료
get '/complete' do
  @title = params[:title]
  @content = params[:content]
  CSV.open("bamboo.csv", "a+:utf-8") do |csv|
    csv << [@title.to_s, @content.to_s]
  end
  erb :complete
end

get '/signup' do


  erb :signup
end

get '/completee' do
  @id = params[:id]
  @pw = params[:password]
  CSV.open("list.csv", "a+:utf-8") do |csv|
    csv << [@id.to_s, @pw.to_s]
  end
  erb :completee
end
