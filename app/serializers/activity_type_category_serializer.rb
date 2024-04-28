class ActivityTypeCategorySerializer < ActiveModel::Serializer
	attributes :name

	has_many :activity_types
end