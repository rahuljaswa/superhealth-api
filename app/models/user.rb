class User < ApplicationRecord
	include DeviseTokenAuth::Concerns::User

	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

	has_many :images
	has_many :activities
	has_many :measurements
	has_many :measurement_type_user_summaries

	has_and_belongs_to_many :meals
	has_and_belongs_to_many :protocols
end