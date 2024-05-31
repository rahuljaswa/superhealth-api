class MeasurementTypeSerializer < ActiveModel::Serializer
	attributes :name, :description, :id, :measurement_type_category

	has_many :measurements
end