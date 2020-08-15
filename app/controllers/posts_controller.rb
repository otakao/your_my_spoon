class PostsController < ApplicationController
  before_action :move_to_index, only: [:new] 
  before_action :set_params, only: [:show, :edit, :update]

  def index
    @map = Map.new
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
    
    @images = []
    @posts.each do |post|
      @images << post.images
    end
  end

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, alert: '入力に失敗しました'
    end
  end

  def show
    @address = @post.user.address
    @hash = Gmaps4rails.build_markers(@address) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.city    
    end
  end

  def edit
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category_id, :price, :condition, :delivery_place, :delivery_date, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_params
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
