class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id]) 
    @post = Post.includes(:category).where(category_id: @category)   

    @images = []
    @post.each do |post|
      @images << post.images
    end
    
  end
end
