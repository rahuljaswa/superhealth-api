class MealSerializer < ActiveModel::Serializer
	attributes :name, :description, :id

	has_many :meal_components
end