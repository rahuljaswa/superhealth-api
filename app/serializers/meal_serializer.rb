class MealSerializer < ActiveModel::Serializer
	attributes :name, :description

	has_many :meal_components
end