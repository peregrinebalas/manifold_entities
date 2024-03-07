class Manifest < ApplicationRecord
    belongs_to :entity

    validate :valid_polygon?

    def self.generate(entity:)
        #TODO: create a PORO for creating a unique polygon associated to entity
        Manifest.create(entity: entity, stroke: "#000000", polygon: [[0,0],[0,2], [4,4]])
    end

    private

    def valid_polygon?
        coordinates.class == Array &&
        coordinates.all? do |c|
            c.class == Array &&
            c.length == 2 &&
            c.all? do |i|
                i.class == Integer &&
                0 <= i && i <= 100
            end
        end
    end
end
