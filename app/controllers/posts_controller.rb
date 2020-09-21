class PostsController < ApplicationController

  before_action :authenticate_user!, only: :new
  
  def index
    @posts = Post.all.includes(:user)
  end
  
  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to post_path
    else
      render :new
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.required(:post).permit(:content)
  end

end