class MapsController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @addresses = Address.all
    @hash = Gmaps4rails.build_markers(@addresses) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow render_to_string(partial: "maps/infowindow", locals: { place: place }) 
    end
  end

  def new
    @map = Map.new 
  end

  def show
    @hash = Gmaps4rails.build_markers(@map) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      # marker.infowindow place.address
    end
  end

  def create
    @map = Map.new(map_params)

    respond_to do |format|
      if @map.save
        format.html { redirect_to @map, notice: 'Place was successfully created.'}
        format.json { render :show, status: created, location: @map}
      else
        format.html { render :posts/index }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end  
  


  private

    def set_params
      @map = Map.find{params[:id]}
    end

    def map_params
      params.require(:map).permit(:name)
    end

end
