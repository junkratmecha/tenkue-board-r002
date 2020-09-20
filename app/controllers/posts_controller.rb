class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update
      redirect_to root_path, notice: '編集できました'
    else
      flash.now[:error] = '更新できませんでした'
      render :edit
    end
  end
end