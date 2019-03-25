class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.integer :genre_id
      t.text :name
    end
  end
end
