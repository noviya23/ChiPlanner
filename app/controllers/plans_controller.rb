class PlansController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @plans = Plan.where(planner_id: 1).order(start_time: :asc)
        @plans_with_place_info = []
        @plans.each do |plan|
          place_id = plan.place_id
          place_info = Place.select(:title, :image, :description, :location, :source_link, :open_time, :close_time)
                            .find_by(id: place_id)
          if place_info
            plan_with_place_info = plan.attributes.merge(place_info.attributes)
            plan_with_place_info['id'] = plan.id
            @plans_with_place_info << plan_with_place_info
          end
        end
        render json: @plans_with_place_info
    end

    def create
        place_id = plan_params[:place_id]
        start_time = plan_params[:start_time]
        end_time = plan_params[:end_time]
      
        place = Place.find(place_id)
        if !within_opening_hours?(place, start_time, end_time)
          render json: { error: "The plan time does not fall within the opening hours of the place" }, status: 200
          return
        end
      
        if same_place_id_and_plan_id?(plan_params[:place_id], plan_params[:planner_id])
          render json: { error: "Place already exists in the planner" }, status: 200
          return
        end
      
        if overlapping_plans_exist?(start_time, end_time)
          render json: { error: "There are overlapping plans in the given time range" }, status: 200
          return
        end
      
        plan = Plan.create(plan_params)
        if plan.valid?
          render json: plan, status: :created
        else
          render json: plan.errors, status: :unprocessable_entity
        end
      end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        head :ok
    end
    
    private
    
    def plan_params
        params[:plan][:planner_id] = 1
        params.require(:plan).permit(:place_id, :start_time, :end_time, :planner_id)
    end

    def overlapping_plans_exist?(start_time, end_time)
        Plan.exists?(['(start_time < ? AND end_time > ?) OR (start_time < ? AND end_time > ?) OR (start_time >= ? AND end_time <= ?)',
                      end_time, start_time,
                      start_time, end_time,
                      start_time, end_time])
    end

    def same_place_id_and_plan_id?(place_id, planner_id)
        Plan.exists?(place_id: place_id, planner_id: planner_id)
    end

    def within_opening_hours?(place, start_time, end_time)
        close_time = place.close_time.strftime("%H:%M:%S")
        place.open_time <= start_time.to_time.strftime("%H:%M:%S") &&
          close_time >= end_time.to_time.strftime("%H:%M:%S")
      end
end
