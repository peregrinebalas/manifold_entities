class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :contact, null: false, foreign_key: { to_table: :entities }, index: true

      t.timestamps
    end
  end
end
