class Activity < ApplicationRecord
	belongs_to :activity_type
	belongs_to :user

	# This is called from a background job so we can only use primitives
	def self.synchronize(activities_to_synchronize)
		activities_to_synchronize.each do |activity_to_synchronize|
			activity_h = activity_to_synchronize.deep_symbolize_keys

			activity_type = nil
			activity_type_h = Convenience.safely_retrieve_value(activity_h, :activity_type)
			if activity_type_h
				activity_type_name = Convenience.safely_retrieve_value(activity_type_h, :name)
				activity_type = ActivityType.find_by_name(activity_type_name)
			end

			if activity_type
				activity = self.find_or_create_by(client_uuid: Convenience.safely_retrieve_value(activity_h, :client_uuid))

				activity.active_time = Convenience.safely_retrieve_value(activity_h, :active_time)
				activity.calories_expended = Convenience.safely_retrieve_value(activity_h, :calories_expended)
				activity.end_time = Convenience.safely_retrieve_value(activity_h, :end_time)
				activity.start_time = Convenience.safely_retrieve_value(activity_h, :start_time)

				activity.activity_type = activity_type

				user = User.find_or_create_by(email: "rahul@rahuljaswa.com")
				if !user.id
					user.password = "11111111"
					user.password_confirmation = "11111111"
				end
				activity.user = user

				activity.save!
			end
		end
	end
end