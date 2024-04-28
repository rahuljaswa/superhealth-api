class Measurement < ApplicationRecord
	belongs_to :measurement_type
	belongs_to :user

	has_many :measurement_values
end