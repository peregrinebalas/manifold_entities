class CreateManifests < ActiveRecord::Migration[7.1]
  def change
    create_table :manifests do |t|

      t.timestamps
    end
  end
end
