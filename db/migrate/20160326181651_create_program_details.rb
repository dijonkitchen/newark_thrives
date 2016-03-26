class CreateProgramDetails < ActiveRecord::Migration
  def change
    create_table :program_details do |t|
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :description, null: false
      t.string :days_offered, null: false
      t.string :time, null: false
      t.string :location_type, null: false
      t.string :meals_offered, null: false
      t.string :grades_served, null: false
      t.string :enrollment_type, null: false
      t.string :enrollment_period, null: false
      t.string :enrollment_requirements, null: false
      t.string :cost, null: false
      t.string :focus, null: false

      t.timestamps null: false
    end
  end
end
