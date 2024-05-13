class MeasurementValueSerializer < ActiveModel::Serializer
	attributes :amount, :units, :description, :calculation_type, :start_time, :end_time, :source, :quality, :id
end