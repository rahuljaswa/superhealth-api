class UserSerializer < ActiveModel::Serializer
	attributes :email, :id

	has_many :images
	has_many :measurement_type_user_summaries
	has_many :activities
	has_many :measurements
	has_many :meals
	has_many :protocols	
end