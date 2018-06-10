class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find( params[:id] )
    @comments = Comment.where(post_id: @post)
  end

  def new
    @post = current_user.posts.create
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find( params[:id] )
  end

  def update
    @post = Post.find( params[:id] )
    @post.update_attributes(post_params)
    redirect_to posts_url
  end

  def destroy
    @post = Post.find( params[:id] )
    @post.destroy
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:message, :image)
  end
end
