class Entity < ApplicationRecord
    belongs_to :outsider
    has_many :manifests, dependent: :delete_all
    has_many :contacts
    has_many :conversations, through: :messages

    after_create :generate_manifest

    def generate_manifest
        Manifest.generate(entity: self)
    end
end
