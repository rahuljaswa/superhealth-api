class ActivityTypeSerializer < ActiveModel::Serializer
	attributes :name

	has_many :activities
end