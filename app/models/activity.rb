class Activity < ApplicationRecord
	belongs_to :city
    has_many :list_activities


end
