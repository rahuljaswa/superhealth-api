class MeasurementTypeSerializer < ActiveModel::Serializer
	attributes :name, :description, :id, :measurement_type_category
end