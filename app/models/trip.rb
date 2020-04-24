class Trip < ApplicationRecord
    belongs_to :city
    #has_many :activities, through: :list_trips
    has_many :list_trips, dependent: :destroy

    accepts_nested_attributes_for :list_trips,  :allow_destroy => true
    has_many :activities, through: :list_trips

    
    #, :reject_if => :reject_tour, :allow_destroy => true

    #def reject_tour(attributes)
    #    exists = attributes['activity_id'].present?
    #    #empty = attributes.slice(:when, :where).values.all?(&:blank?)
    #    attributes.merge!({:_destroy => 1}) if !exists #and empty # destroy empty tour
    #    
    #    return (!exists)   # and empty) # reject empty attributes
    #end
end
