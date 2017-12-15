require 'sinatra'
require 'sinatra/reloader'
require 'data_mapper'

set :bind, '0.0.0.0'
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/contentList.db")

class Post
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :content, Text
  property :created_at, DateTime
end

DataMapper.finalize
Post.auto_upgrade!

get '/' do
  @post = Post.all
  erb :index
end

get '/new' do
  erb :new
end

get '/create' do
  @title = params[:title]
  @content = params[:content]
  Post.create(:title => @title, :content => @content)
  #erb :create
  redirect '/'
end

get '/destroy/:id' do
  post = Post.get(params[:id])
  post.destroy
  redirect '/'
end

get '/edit/:id' do
  @post = Post.get(params[:id])
  erb :edit
end

get '/update/:id' do
  post = Post.get(params[:id])
  post.update(:title => params[:title], :content => params[:content])
  redirect '/'
end

get '/read/:id' do
  @post = Post.get(params[:id])
  erb :read
end

get '/update/:id' do
  @post = Post.get(params[:id])
  post.update(:title => params[:title], :content => params[:contnet])
  erb :update
end
