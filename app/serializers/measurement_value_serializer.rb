class MeasurementValueSerializer < ActiveModel::Serializer
	attributes :measurement, :user, :amount, :units, :description, :calculation_type, :start_time, :end_time, :source, :quality
end