class Image < ApplicationRecord
	belongs_to :activity
	belongs_to :activity_type
	belongs_to :meal
	belongs_to :user
end