class MeasurementTypeCategorySerializer < ActiveModel::Serializer
	attributes :name, :description, :id

	has_many :measurements
end