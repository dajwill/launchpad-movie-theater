class AddColumnsToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :image_url, :string
    add_column :movies, :description, :string
  end
end
