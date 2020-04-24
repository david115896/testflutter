class Ltrip < ApplicationRecord
    belongs_to :activity
    belongs_to :trip, optional: true


end
