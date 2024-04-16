class PlannersController < ApplicationController
    def create
      planner = Planner.create(planner_params)
      if planner.valid?
        params[:plans].each do |plan_params|
          planner.plans.create(plan_params)
        end
        render json: planner, status: :created
      else
        render json: planner.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def planner_params
      params.require(:planner).permit(:name)
    end
  end
