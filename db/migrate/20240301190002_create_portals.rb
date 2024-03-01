class CreatePortals < ActiveRecord::Migration[7.1]
  def change
    create_table :portals do |t|
      t.boolean :public
      t.references :user, null: true, foreign_key: true
      t.timestamps
    end
  end
end
