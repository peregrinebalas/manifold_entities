class CreateOutsiders < ActiveRecord::Migration[7.1]
  def change
    create_table :outsiders do |t|
      t.references :entity, null: true, foreign_key: true
      t.string :email
      t.string :password
      t.date :birth_date

      t.timestamps
    end
  end
end
