class VehiclesController < ApplicationController
   def index
    @vehicles = Vehicle.all.order(created_at: :asc)

   end

   def new
      @vehicle = Vehicle.new
      
   end
end