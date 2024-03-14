class AddOutsiderIdToEntities < ActiveRecord::Migration[7.1]
  def change
    add_reference :entities, :outsider, index: :true
  end
end
