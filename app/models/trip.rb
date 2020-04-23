class Trip < ApplicationRecord
    belongs_to :city
    has_many :list_trips

end
