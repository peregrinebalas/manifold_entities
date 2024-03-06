class Entity < ApplicationRecord
    has_one :outsider
    has_many :manifests
    has_many :contacts
    has_many :conversations, through: :messages

    after_create :generate_manifest

    def generate_manifest
        Manifest.generate(entity: self)
    end
end
