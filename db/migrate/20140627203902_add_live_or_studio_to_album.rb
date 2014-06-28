class AddLiveOrStudioToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :live_or_studio, :string, null: false, default: "studio"
    rename_column :tracks, :type, :bonus_or_regular
  end
end
