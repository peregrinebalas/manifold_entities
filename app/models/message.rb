class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :entity
  belongs_to :outsider
end
