class ActivitySerializer < ActiveModel::Serializer
	attributes :activity_type, :user, :active_time, :calories_expended, :end_time, :minimum_zone_two_heart_rate, :minimum_zone_three_heart_rate, :minimum_zone_four_heart_rate, :minimum_zone_five_heart_rate, :start_time
end