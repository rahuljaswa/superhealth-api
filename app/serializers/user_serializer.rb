class UserSerializer < ActiveModel::Serializer
	attributes :email, :id, :username

	has_many :images
	has_many :activities
	has_many :measurements
	has_many :meals
	has_many :protocols	
end