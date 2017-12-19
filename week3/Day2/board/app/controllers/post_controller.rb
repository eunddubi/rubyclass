class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
  #  @username = params[:username]
  #  @title = params[:title]
  #  @content = params[:content]
    Post.create(:username => params[:username], :title => params[:title],
                                              :content => params[:content])
    # 1-1번 방법
    # Post.create(username: params[:username],
    #           title: params[:title],
    #           content: params[:content])
    # 2번 방법
    # post = Post.new
    # post.username = params[:username]
    # post.title = params[:title]
    # post.content = params[:content]
    # post.save
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
#    @post.update(username: params[:username], title: params[:title],
#      content: params[:content], created_at: params[:created_at])
    post.update(:username => params[:username], :title => params[:title],
      :content => params[:content])
    redirect_to "/post/show/#{params[:id]}"
  end


end
