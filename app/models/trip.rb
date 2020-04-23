class Trip < ApplicationRecord
    belongs_to :city
    has_many :list_trips
	has_many :activities, through: :list_trips

end
