class PostsController < ApplicationController

  before_action :authenticate_user!, only: :new
  before_action :set_post, only: :show
  
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
  end

  private

  def post_params
    params.required(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end