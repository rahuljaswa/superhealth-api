class MeasurementSerializer < ActiveModel::Serializer
	attributes :measurement_type, :amount, :description, :calculation_type, :start_time, :end_time, :source, :quality, :id
end