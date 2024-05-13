class ActivityTypeCategorySerializer < ActiveModel::Serializer
	attributes :name, :id

	has_many :activity_types
end