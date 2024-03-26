class Conversation < ApplicationRecord
    has_many :messages
    belongs_to :entity
    belongs_to :outsider
end
