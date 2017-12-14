require 'sinatra'
require 'sinatra/reloader'
require 'csv'

get '/signup' do
  erb :signup
end

get '/usercomplete' do
  @email = params[:email]
  @pwd = params[:pwd]
  @pwd2 = params[:pwd2]

  if @pwd == @pwd2
    CSV.open("member.csv", "a+:urg-8") do |csv|
      csv << [@email, @pwd]
    end
    erb :usercomplete
  else
    redirect '/signup'
  end
end

get '/users' do
  @posts = []
  CSV.foreach('member.csv', encoding: 'utf-8') do |row|
    @posts << row
  end
end
