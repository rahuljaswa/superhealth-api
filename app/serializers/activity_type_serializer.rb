class ActivityTypeSerializer < ActiveModel::Serializer
	attributes :name, :id

	has_many :activities
end