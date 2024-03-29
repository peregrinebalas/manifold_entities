class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.references :conversation, null: false, foreign_key: true
      t.references :entity, null: false, foreign_key: true
      t.string :content, null: false
      
      t.timestamps
    end
  end
end
