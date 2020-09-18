class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
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