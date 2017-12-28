class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      :username => params[:username],
      :title => params[:title],
      :content => params[:content]
    )
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.find(params[:id]).update(
      :username => params[:username],
      :title => params[:title],
      :content => params[:content]
    )
    redirect_to '/'
  end

  def destroy
    Post.find(params[:id]).destroy()
    redirect_to '/'
  end

  def add_comment
    Comment.create(
      :comment => params[:comment],
      :post_id => params[:id]
    )
    redirect_to :back
  end

  def edit_comment
    Comment.find(params[:id]).update(
      :comment => params[:comment]
    )
  end

  def delete_comment
    Comment.find(params[:id]).destroy
    redirect_to :back
  end

end
