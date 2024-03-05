class CreateManifests < ActiveRecord::Migration[7.1]
  def change
    create_table :manifests do |t|
      t.references :entity, null: false, foreign_key: true
      t.string :line_color, null: false
      t.string :fill_color
      t.vector :embedding, limit: 1536, null: false

      t.timestamps
    end
  end
end
