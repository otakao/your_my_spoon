class AddressesController < ApplicationController
  before_action :set_params, only: [:edit, :update]

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to user_path(@address),notice: 'Place was successfully created.' }
        format.json { render :users/show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity}     
      end 
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to user_path(@address),notice: 'Place was successfully created.' }
        format.json { render :users/show, status: :created, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity}     
      end 
    end

  end

  private

  def address_params
    params.require(:address).permit(:last_name, :first_name, :shop_name, :shop_category, :position, :postal_code, :prefecture_name, :city, :street, :building, :tel).merge(user_id: current_user.id)
  end

  def set_params
    @address = Address.find(params[:id])
  end
end
