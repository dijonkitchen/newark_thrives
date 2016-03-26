class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name, null: false
      t.string :link, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps null: false
    end
  end
end
