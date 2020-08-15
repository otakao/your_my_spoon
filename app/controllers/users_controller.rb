class UsersController < ApplicationController
  def show
    @post = Post.find_by(id: current_user.id)
    @posts = Post.where(user_id: params[:id]).includes(:user).order(created_at: :desc)
    @address = current_user.address    
    
    @images = []
    @posts.each do |post|
      @images << post.images
    end

  end
end
