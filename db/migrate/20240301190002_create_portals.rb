class CreatePortals < ActiveRecord::Migration[7.1]
  def change
    create_table :portals do |t|
      t.boolean :public
      t.references :outsider, null: true, foreign_key: true
      t.st_point :coordinates, geographic: true # longitude, latitude
      t.timestamps
    end
  end
end
