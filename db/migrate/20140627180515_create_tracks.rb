class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :name, null: false
      t.timestamps
    end
    
    add_index :tracks, :album_id
    add_index :tracks, :name
  end
end
