class VehiclesController < ApplicationController
   def index
    @vehicles = Vehicle.all.order(created_at: :asc)

   end

   def new
      @vehicle = Vehicle.new
      
   end
   
   def create
      @vehicle = Vehicle.new(vehicle_params)
      
      if @vehicle.save
         redirect_to  vehicle_path(@vehicle)
      else
         render :new
      end
   end

   def show
      @vehicle = Vehicle.find(params[:id])
      
   end

   def edit
      @vehicle = Vehicle.find(params[:id])

   end

   def update
      @vehicle = Vehicle.find(params[:id])
      
      if @vehicle.update(vehicle_params)
         redirect_to  vehicle_path(@vehicle)
      else
         render :edit
      end
   end

   def destroy
      @vehicle = Vehicle.find(params[:id])

      @vehicle.destroy

      redirect_to vehicles_path
   end
   
   
   private

   def vehicle_params
      params.require(:vehicle).permit(:brand, :model, :year, :plate, :kind)
      
   end

   def fetch_vehicle
      @vehicle = Vehicle.find(params[:id])
   end

end
