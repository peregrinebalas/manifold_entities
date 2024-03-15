class Outsider < ApplicationRecord
    has_one :entity
    has_many :messages, through: :entity
    has_many :conversations#, through: :messages
    has_many :contacts, through: :entity
    accepts_nested_attributes_for :entity
end
