class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.integer :year, null: false
      t.string :name, null: false
      t.timestamps
    end
    
    add_index :albums, :band_id
    add_index :albums, :year
    add_index :albums, :name
  end
end
