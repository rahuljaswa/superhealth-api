class ActivityType < ApplicationRecord
	has_many :activities
	belongs_to :activity_type_category
end