require 'sinatra'
require 'sinatra/reloader'
require 'nokogiri'
require 'data_mapper'

set :bind, '0.0.0.0'

before do
  p "**************************"
  p params
  p "**************************"
end

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/blog.db")
class Post
  include DataMapper::Resource
  property :id, Serial          #순차적으로 id 부여해주는 변수형
  property :title, String
  property :content, Text
  property :created_at, DateTime
end

class User
  include DataMapper::Resource
  property :id, Serial          #순차적으로 id 부여해주는 변수형
  property :email, String
  property :pwd, Text
  property :created_at, DateTime
end

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize
# automatically create the post table
Post.auto_upgrade!
User.auto_upgrade!

get '/' do
  @posts =Post.all
  erb :index
end

get '/post' do
  erb :post
end

get '/complete' do
  @title = params[:title]
  @content = params[:content]
  Post.create(:title => @title, :content => @content)
  erb :complete
end

get '/signup' do
  erb :signup
end

get '/usercomplete' do
  @email = params[:email]
  @pwd = params[:pwd]
  User.create(:email => @email, :pwd => @pwd)
  erb :usercomplete
end

get '/users' do
  @users = User.all
  erb :users
end
