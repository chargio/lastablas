class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :day_of_week, default: 0, null: false
      t.string :start_time, null: false
      t.string :end_time,   null: false
      t.integer :sites_reserved, default: 0, null: false
      t.belongs_to :room, foreign_key: true

      t.timestamps
    end
  end
end
