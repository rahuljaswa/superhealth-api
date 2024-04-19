class ImageSerializer < ActiveModel::Serializer
	attributes :activity, :activity_type, :meal, :user, :caption, :original_url
end