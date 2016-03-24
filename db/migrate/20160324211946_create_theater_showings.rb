class CreateTheaterShowings < ActiveRecord::Migration
  def change
    create_table :theater_showings do |t|
      t.time :time

      t.timestamps null: false
    end
  end
end
