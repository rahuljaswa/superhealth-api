class UserMeasurementTypes < ApplicationRecord
	belongs_to :user
	belongs_to :measurement_type
end