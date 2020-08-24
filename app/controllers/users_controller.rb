class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: params[:id]).includes(:user).order(created_at: :desc)    
    @address = @user.address

    @images = []
    @posts.each do |post|
      @images << post.images
    end

  end
end
