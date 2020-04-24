class Trip < ApplicationRecord
    belongs_to :city
    #has_many :activities, through: :list_trips
    has_many :ltrips, dependent: :destroy

    accepts_nested_attributes_for :ltrips,  :allow_destroy => true
    has_many :activities, through: :ltrips

    
    #, :reject_if => :reject_tour, :allow_destroy => true

    #def reject_tour(attributes)
    #    exists = attributes['activity_id'].present?
    #    #empty = attributes.slice(:when, :where).values.all?(&:blank?)
    #    attributes.merge!({:_destroy => 1}) if !exists #and empty # destroy empty tour
    #    
    #    return (!exists)   # and empty) # reject empty attributes
    #end
end
