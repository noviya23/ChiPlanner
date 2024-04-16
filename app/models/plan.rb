class Plan < ApplicationRecord
  belongs_to :planner
  attr_accessor :place_name
end