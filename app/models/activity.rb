class Activity < ApplicationRecord
	belongs_to :activity_type
	belongs_to :user

	def self.synchronize(activities_to_synchronize)
		activities_to_synchronize.each do |activity_to_synchronize|
			activity = Activity.find_or_create_by(client_uuid: activity_to_synchronize[:client_uuid])
			activity.active_time = activity_to_synchronize[:active_time]
			activity.calories_expended = activity_to_synchronize[:calories_expended]
			activity.end_time = activity_to_synchronize[:end_time]
			activity.start_time = activity_to_synchronize[:start_time]

			activity_type = ActivityType.find_or_create_by(name: activity_to_synchronize[:activity_type][:name])
			activity_type.activity_type_category = ActivityTypeCategory.find_or_create_by(name: "Meta Category")
			activity.activity_type = activity_type

			user = User.find_or_create_by(email: "rahul@rahuljaswa.com")
			user.password = "11111111"
			user.password_confirmation = "11111111"
			activity.user = user

			activity.save
		end
	end
end