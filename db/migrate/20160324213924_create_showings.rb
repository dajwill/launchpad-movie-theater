class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.string :theater_id
      t.time :time

      t.timestamps null: false
    end
  end
end
