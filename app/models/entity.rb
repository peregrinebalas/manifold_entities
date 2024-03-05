class Entity < ApplicationRecord
    belongs_to :outsider
    has_many :manifests
    has_many :contacts
    has_many :conversations, through: :messages
end
