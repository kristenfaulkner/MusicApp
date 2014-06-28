class AddLyricsToNote < ActiveRecord::Migration
  def change
    add_column :notes, :lyrics, :text
  end
end
