class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
