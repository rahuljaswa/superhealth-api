class Measurement < ApplicationRecord
	belongs_to :measurement_type
	belongs_to :user

	# This is called from a background job so we can only use primitives
	def self.synchronize(measurements_to_synchronize)
		measurements_to_synchronize.each do |measurement_to_synchronize|
			measurement_h = measurement_to_synchronize.deep_symbolize_keys

			measurement_type = nil
			measurement_type_h = Convenience.safely_retrieve_value(measurement_h, :measurement_type)
			if measurement_type_h
				measurement_type_h_name = Convenience.safely_retrieve_value(measurement_type_h, :name)
				measurement_type = MeasurementType.find_by_name(measurement_type_h_name)
			end

			if measurement_type
				client_uuid = Convenience.safely_retrieve_value(measurement_h, :client_uuid)

				measurement = self.find_or_create_by(client_uuid: client_uuid)

				measurement.amount = Convenience.safely_retrieve_value(measurement_h, :amount)
				measurement.units = Convenience.safely_retrieve_value(measurement_h, :units)
				measurement.start_time = Convenience.safely_retrieve_value(measurement_h, :start_time)
				measurement.end_time = Convenience.safely_retrieve_value(measurement_h, :end_time)
				measurement.source = Convenience.safely_retrieve_value(measurement_h, :source)
				measurement.measurement_type = measurement_type

				user = User.find_or_create_by(email: "rahul@rahuljaswa.com")
				if !user.id
					user.password = "11111111"
					user.password_confirmation = "11111111"
				end
				measurement.user = user

				measurement_type_user_summary = MeasurementTypeUserSummary.find_or_create_by(user: user, measurement_type: measurement_type)
				measurement_type_user_summary.update_statistics
				measurement_type_user_summary.save

				measurement.save
			end
		end
	end
end
