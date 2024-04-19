class Measurement < ApplicationRecord
	belongs_to :measurement_category
	belongs_to :user

	has_many :measurement_values
end