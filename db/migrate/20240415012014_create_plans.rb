class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.references :planner, null: false, foreign_key: true
      t.integer :plan_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
