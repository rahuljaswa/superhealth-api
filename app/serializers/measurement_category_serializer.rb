class MeasurementCategorySerializer < ActiveModel::Serializer
	attributes :name, :description

	has_many :measurements
end