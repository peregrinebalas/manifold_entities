class Manifest < ApplicationRecord
    belongs_to :entity

    def self.generate(entity:)
        #TODO: create a PORO for creating a unique polygon
    end
end
