class PostsController < ApplicationController
  before_action :authenticate_user!, only: :new

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

  private
  def post_params
    params.required(:post).permit(:content)
  end
end