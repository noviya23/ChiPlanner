class HomesController < ApplicationController
    include HomesHelper

    def index
        @places = Place.all
        categories = get_categories
        @places.each do |place|
            place[:category] = categories
        end
        render json: @places
    end
end
