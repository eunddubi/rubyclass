#encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'nokogiri'
require 'csv'
require 'date'
require 'uri'

before do
  p "***********************"
  p params
  p "***********************"
end

get '/' do
  erb :index
end

get '/welcome/:name' do
  # views/welcome.erb @p를 찍어서 디버깅
  @p = params.inspect
  @name = params[:name]
  @time = Time.now.to_s
  CSV.open('user.csv', 'a+') do |data|
    #Time.now를 쓰려면 require 'date'를 해야한다.
    data << [@name.to_s, @time]
  end
  erb :welcome
end

get '/users' do
  @users = []
  CSV.foreach('user.csv') do |row|
    @users << row
  end
  erb :users
end

get '/lolfinder' do
  erb :lolfinder
end

get '/lol' do
  @username = params[:username]
  url = "http://www.op.gg/summoner/userName=#{@username}"
  url = URI.encode(url) #한글 url을 인코딩 한다.
  response = HTTParty.get(url) #httparty를 이용하여 요청보낸다.
  doc = Nokogiri::HTML(response) #Nokogiri로 검색하기 편하게 바꾼다.
  @win = doc.css("#SummonerLayoutContent > div.tabItem.Content.SummonerLayoutContent.summonerLayout-summary > div.SideContent > div.TierBox.Box > div.SummonerRatingMedium > div.TierRankInfo > div.TierInfo > span.WinLose > span.wins")
  @lose = doc.css("#SummonerLayoutContent > div.tabItem.Content.SummonerLayoutContent.summonerLayout-summary > div.SideContent > div.TierBox.Box > div.SummonerRatingMedium > div.TierRankInfo > div.TierInfo > span.WinLose > span.losses")
  erb :lol
end

get '/vote' do
  erb :vote
end

get '/result' do
  @result = params[:count]
  erb :result
end
