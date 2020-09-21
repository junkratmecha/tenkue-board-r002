class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_post, only: [:edit, :update]
  before_action :confirm_user, only: [:edit]

  def index
    @posts = Post.all.includes(:user)
  end

  def edit
  end

  def update
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

  def set_post
    @post = Post.find(params[:id])
  end

  def confirm_user
    set_post
    if current_user.id != @postuser.id
      redirect_to root_path, notice: 'アクセスできません'
    end
  end
end