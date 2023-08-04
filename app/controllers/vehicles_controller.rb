class VehiclesController < ApplicationController
   def index
    @vehicles = Vehicle.all.order(created_at: :asc)

   end

   def new
      @vehicle = Vehicle.new
      
   end
   
   def create
      @vehicle = Vehicle.new(vehicle_params)
      
   end

   private

   def vehicle_params
      params.require(:vehicle).permit(:brand, :model, :year, :plate, :kind)
      
   end

end