class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: '編集できました'
    else
      flash.now[:error] = '更新できませんでした'
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    redirect_to posts_path, notice: '削除できました'
  end

  private
  def post_params
    params.required(:post).permit(:content)
  end
end