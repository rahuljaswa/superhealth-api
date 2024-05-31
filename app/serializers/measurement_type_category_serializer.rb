class MeasurementTypeCategorySerializer < ActiveModel::Serializer
	attributes :name, :description, :id, :measurement_types

	has_many :measurement_types
end