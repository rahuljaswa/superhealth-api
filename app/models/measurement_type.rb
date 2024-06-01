class MeasurementType < ApplicationRecord
	belongs_to :measurement_type_category

	has_many :measurements
	has_many :measurement_type_user_summaries
end
