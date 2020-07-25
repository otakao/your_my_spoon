class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to maps_path
    else
      redirect_to root_path
    end

  end

  def edit
  end

  def destroy
  end

  private

  def map_params
    params.require(:map).permit(:name)
  end
    
end
