class MeasurementTypeSerializer < ActiveModel::Serializer
	attributes :name, :description, :id, :measurement_type_category, :default_units

	has_many :measurements
end