class Entity < ApplicationRecord
    belongs_to :outsider
    has_many :manifests, dependent: :delete_all
    has_many :contacts
    has_many :messages
    has_many :conversations

    after_create -> { Manifest.generate(entity: self) }
end
