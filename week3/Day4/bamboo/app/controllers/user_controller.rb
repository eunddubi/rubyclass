class UserController < ApplicationController
  def index
    @bamboo = Bamboolist.all
  end

  def new
  end

  def create
    Bamboolist.create(
      :username => params[:username],
      :title => params[:title],
      :content => params[:content]
    )
    redirect_to '/'
  end

  def show
    @bamboo = Bamboolist.find(params[:id])
    @comments = Comment.all
  end

  def update
    Bamboolist.find(params[:id]).update( :username => params[:id],
    :title => params[:title], :content => params[:content])
    #redirect_to '/'
  end

  def edit
    @bamboo = Bamboolist.find(params[:id])
  end

  def destroy
    Bamboolist.find(params[:id]).destroy()
    redirect_to '/'
  end

  def add_comment
    Comment.create( :content => params[:content],
    :bamboolist_id => params[:id] )
    redirect_to :back
  end

end
