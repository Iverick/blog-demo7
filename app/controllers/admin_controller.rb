class AdminController < ApplicationController
  def index
  end

  def posts
    @posts = Post.all.includes(:users, :comments)
  end

  def comments
  end

  def users
  end

  def show_post
    @post = Post.includes(:users, :comments).find(params[:id])
  end
end
