class Activity < ApplicationRecord
	belongs_to :activity_type
	belongs_to :user

	def self.safely_retrieve_value(hashed_json_object, key)
		if hashed_json_object
			hashed_json_object.key?(key) ? hashed_json_object[key] : nil
		end
	end

	# This is called from a background job so we can only use primitives
	def self.synchronize(activities_to_synchronize)
		activities_to_synchronize.each do |activity_to_synchronize|
			activity_h = activity_to_synchronize.deep_symbolize_keys

			activity = self.find_or_create_by(client_uuid: self.safely_retrieve_value(activity_h, :client_uuid))

			activity.active_time = self.safely_retrieve_value(activity_h, :active_time)
			activity.calories_expended = self.safely_retrieve_value(activity_h, :calories_expended)
			activity.end_time = self.safely_retrieve_value(activity_h, :end_time)
			activity.start_time = self.safely_retrieve_value(activity_h, :start_time)
			
			activity_type_h = self.safely_retrieve_value(activity_h, :activity_type)
			activity_type_name = self.safely_retrieve_value(activity_type_h, :name)

			activity_type = ActivityType.find_or_create_by(name: activity_type_name)
			activity_type.activity_type_category = ActivityTypeCategory.find_or_create_by(name: "Meta Category")
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