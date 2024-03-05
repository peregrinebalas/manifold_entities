class Conversation < ApplicationRecord
    has_many :messages
    belongs_to :entity, through: :messages
    belongs_to :outsider, through: entity
end
