class PlacesController < ApplicationController
    def tour
        id = params[:id]
        start_time = params[:start_time]
        end_time = params[:end_time]
    
        # Logic to process the parameters and generate a tour
        # You can fetch the place by ID, validate the time range, etc.
    
        render json: { id: id, start_time: start_time, end_time: end_time }
      end
end
