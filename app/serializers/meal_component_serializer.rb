class MealComponentSerializer < ActiveModel::Serializer
	attributes :name, :description, :calories, :fat, :monounsaturated_fat, :polyunsaturated_fat, :carbohydrates, :fiber, :sugar, :protein, :cholesterol, :vitamin_a, :thiamin, :riboflavin, :niacin, :vitamin_b5, :vitamin_b6, :vitamin_b7, :vitamin_b12, :vitamin_c, :vitamin_d, :vitamin_e, :vitamin_k, :folate, :calcium, :chloride, :iron, :magnesium, :phosphorus, :potassium, :sodium, :zinc, :caffeine, :chromium, :copper, :iodine, :manganese, :molybdenum, :selenium

	has_many :meals
end