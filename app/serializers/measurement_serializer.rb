class MeasurementSerializer < ActiveModel::Serializer
	attributes :measurement_category, :user, :name, :description, :latest_value, :average_7_days, :average_30_days, :average_90_days, :change_7_days, :change_30_days, :change_90_days, :percent_change_7_days, :percent_change_30_days, :percent_change_90_days

	has_many :measurement_values
end