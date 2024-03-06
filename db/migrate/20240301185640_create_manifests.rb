class CreateManifests < ActiveRecord::Migration[7.1]
  def change
    create_table :manifests do |t|
      t.references :entity, null: false, foreign_key: true
      t.string :stroke, null: false
      t.string :stroke_width
      t.string :fill
      t.jsonb :polygon, null: false

      t.timestamps
    end
  end
end
