class Manifest < ApplicationRecord
    belongs_to :entity

    def self.generate(entity:)
        #TODO: create a PORO for creating a unique polygon associated to entity
        Manifest.create(entity: entity, stroke: "#000000", polygon: [[0,0],[0,2], [4,4]])
    end
end
