class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.time :duration, null: false
      t.integer :position, null: false
      t.integer :album_id, null: false
      t.boolean :bonus, null: false, default: false
      t.text :lyrics

      t.timestamps
    end
    add_index :tracks, :album_id
  end
end
