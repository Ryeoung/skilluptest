class PostController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @data=Post.all.reverse

  end

  def show
    @post=Post.find(params[:id])
    
  end
  def update
      @post=Post.find(params[:id])
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
      
      redirect_to '/post/show/'+ params[:id]
  end
  def create
    @text=Post.new
    @text.title=params[:title]
    @text.content=params[:content]
    @text.user_id=current_user.id
    @text.image=params[:image]
    @text.save
    
    redirect_to "/"
  end

  def new
  end

  def edit
    @post=Post.find(params[:id])
  end

  def destroy
          @post=Post.find(params[:id])
          @post.destroy
  end
end
