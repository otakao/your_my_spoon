class UsersController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @posts = Post.where(user_id: params[:id]).includes(:user).order(created_at: :desc)
    @address = current_user.address    
    @images = @post.images
    @first_image = @images.first
  end
end
