class CreatePortals < ActiveRecord::Migration[7.1]
  def change
    create_table :portals do |t|

      t.timestamps
    end
  end
end
