class MeasurementType < ApplicationRecord
	belongs_to :measurement_type_category
	has_many :measurements
end