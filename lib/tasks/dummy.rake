namespace :dummy do
	task :populate => :environment do

		def create_dummy_image(caption)
			image_urls = [
				"https://images.unsplash.com/photo-1547035902-12efa1d41c2c",
				"https://images.unsplash.com/photo-1546977532-4026721ba7f6",
				"https://images.unsplash.com/photo-1546969856-e18717c488ef",
				"https://images.unsplash.com/photo-1547035110-cfcc31b7007e",
				"https://images.unsplash.com/photo-1546968018-4f2c3c754d21",
				"https://images.unsplash.com/photo-1547034975-a5415355aba0",
				"https://images.unsplash.com/photo-1547035035-452f2f8f569a",
				"https://images.unsplash.com/photo-1547034788-467c2be8cc25",
				"https://images.unsplash.com/photo-1547021005-91707d5f5433",
				"https://images.unsplash.com/photo-1547014617-82280f74b50b",
				"https://images.unsplash.com/photo-1547007959-d66fc3b1edc7",
				"https://images.unsplash.com/photo-1547009380-adedbbd14f84",
				"https://images.unsplash.com/photo-1547015040-88462fea3398",
				"https://images.unsplash.com/photo-1547043736-b2247cb34b01",
				"https://images.unsplash.com/photo-1547032175-7fc8c7bd15b3",
				"https://images.unsplash.com/photo-1547049025-75a7244b10f0",
				"https://images.unsplash.com/photo-1547048553-a6718f56273a",
				"https://images.unsplash.com/photo-1547047803-fa4a5f94ffd2",
				"https://images.unsplash.com/photo-1546983674-06fe762940d8",
				"https://images.unsplash.com/photo-1546994372-f636adc59e4e",
				"https://images.unsplash.com/photo-1546977532-4a61683ea4a0",
				"https://images.unsplash.com/photo-1547024842-fe39037cf223",
				"https://images.unsplash.com/photo-1547005327-ef75a6961556",
				"https://images.unsplash.com/photo-1547024128-c0e9ff5a0f4d",
				"https://images.unsplash.com/photo-1547001294-162e122f8531",
				"https://images.unsplash.com/photo-1547022512-db4bff7a505e",
				"https://images.unsplash.com/photo-1547030750-877fc578d8bc",
				"https://images.unsplash.com/photo-1547010410-776d95e08077",
				"https://images.unsplash.com/photo-1547043688-32b236694495",
				"https://images.unsplash.com/photo-1542841791-c3cc44abdbbb",
				"https://images.unsplash.com/photo-1547070451-e3857a8ea62a",
				"https://images.unsplash.com/photo-1543362906-acfc16c67564"
			]

			image = Image.new(original_url: image_urls.sample, caption: caption)
			image.save

			return image
		end

		# Create 1 dummy users
		1.times do |count|
			user = User.new
			user.username = "asdfasdfasdfa"
			user.email = "asdf@asdf.com"
			user.password = "111111111"
			user.password_confirmation = "111111111"
			# user.images << create_dummy_image(user.username)
			user.save
		end

		100.times do |count|
			meal_component = MealComponent.new(
				name: "Meal Component " + count.to_s,
				description: "Meal Component Description " + count.to_s,
				calories: 500,
				fat: 24,
				monounsaturated_fat: 12,
				polyunsaturated_fat: 12, 
				carbohydrates: 10, 
				fiber: 4, 
				sugar: 6,
				protein: 24,
				cholesterol: 10,
				vitamin_a: 10, 
				thiamin: 10, 
				riboflavin: 10,
				niacin: 10, 
				vitamin_b5: 10,
				vitamin_b6: 10, 
				vitamin_b7: 10, 
				vitamin_b12: 10,
				vitamin_c: 10,
				vitamin_d: 10,
				vitamin_e: 10,
				vitamin_k: 10,
				folate: 10, 
				calcium: 10,
				chloride: 10,
				iron: 10,
				magnesium: 10,
				phosphorus: 10,
				potassium: 10,
				sodium: 10, 
				zinc: 10,
				caffeine: 10,
				chromium: 10,
				copper: 10,
				iodine: 10,
				manganese: 10,
				molybdenum: 10,
				selenium: 10
				)
			meal_component.save
		end
		
		User.all.each do |user|
			hiking = ActivityType.find_by_name("Hiking")
			running = ActivityType.find_by_name("Running")

			30.times do |count|
				activity = Activity.new(
					activity_type: hiking,
					active_time: 120000, 
					calories_expended: 400, 
					end_time: DateTime.now - 12*count.hours, 
					minimum_zone_two_heart_rate: 120,
					minimum_zone_three_heart_rate: 130,
					minimum_zone_four_heart_rate: 140,
					minimum_zone_five_heart_rate: 150,
					start_time: DateTime.now - 13*count.hours)
				activity.save
				user.activities << activity
				user.save
			end

			30.times do |count|
				activity = Activity.new(
					activity_type: running,
					active_time: 90000, 
					calories_expended: 400, 
					end_time: DateTime.now - 14*count.hours, 
					minimum_zone_two_heart_rate: 120,
					minimum_zone_three_heart_rate: 130,
					minimum_zone_four_heart_rate: 140,
					minimum_zone_five_heart_rate: 150,
					start_time: DateTime.now - 15*count.hours)
				activity.save
				user.activities << activity
				user.save
			end

			100.times do |count|
				breakfast = Meal.new(
					name: "Breakfast",
					description: "Breakfast description"
					)
				breakfast.meal_components << MealComponent.order("RANDOM()").limit(1)
				breakfast.meal_components << MealComponent.order("RANDOM()").limit(1)
				breakfast.meal_components << MealComponent.order("RANDOM()").limit(1)
				breakfast.save

				lunch = Meal.new(
					name: "Lunch",
					description: "Lunch description"
					)
				lunch.meal_components << MealComponent.order("RANDOM()").limit(1)
				lunch.meal_components << MealComponent.order("RANDOM()").limit(1)
				lunch.meal_components << MealComponent.order("RANDOM()").limit(1)
				lunch.save

				snack = Meal.new(
					name: "Snack",
					description: "Snack description"
					)
				snack.meal_components << MealComponent.order("RANDOM()").limit(1)
				snack.save

				dinner = Meal.new(
					name: "Dinner",
					description: "Dinner description"
					)
				dinner.meal_components << MealComponent.order("RANDOM()").limit(1)
				dinner.meal_components << MealComponent.order("RANDOM()").limit(1)
				dinner.meal_components << MealComponent.order("RANDOM()").limit(1)
				dinner.save

				user.meals << breakfast
				user.meals << lunch
				user.meals << snack
				user.meals << dinner
				user.save
			end

			# - Cardio: Daily Steps, Daily Miles, Resting Heart Rate, HRV, Heart Rate Recovery, Walking Heart Rate Average, VO2 Max, Heart Rate Zone 1, Heart Rate Zone 2, Heart Rate Zone 3, Heart Rate Zone 4, Heart Rate Zone 5
			# - Mobility: Daily Stand Time
			# - Body Composition: Weight, Body Fat Percentage, Lean Body Mass
			# - Medical: Fasting Blood Glucose, LDL, VLDL, HDL, Lp(a), ApoB, ALT, A1C
			# - Sleep: Daily Total Sleep, Daily Deep Sleep, Daily REM Sleep, Daily Awake Time
			# - Mental Health: Daily Stress

			weight_measurement = Measurement.find_or_create_by!(
					measurement_type: MeasurementType.find_by_name("Weight"),
					user: user
					)
				weight_measurement.save

			100.times do |count|
				weight_measurement_value = MeasurementValue.new(
					amount: 180,
					units: "lbs",
					description: "Weight",
					calculation_type: 1,
					start_time: DateTime.now - 24*count.hours,
					end_time: DateTime.now - 24*count.hours,
					source: "Withings",
					quality: 0.8
					)
				weight_measurement.measurement_values << weight_measurement_value
				weight_measurement.save			
			end
		end

		# protocols = [
		# 	{
		# 		name: "asdfasdf",
		# 		description: "asdfasdfas",
		# 		start_time: DateTime.now,
		# 		end_time: DateTime.now,
		# 		compliance_rate: 0.9, 
		# 		protocol_actions: [
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 		]
		# 	},
		# 	{
		# 		name: "asdfasdf",
		# 		description: "asdfasdfas",
		# 		start_time: DateTime.now,
		# 		end_time: DateTime.now,
		# 		compliance_rate: 0.9, 
		# 		protocol_actions: [
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 		]
		# 	},
		# 	{
		# 		name: "asdfasdf",
		# 		description: "asdfasdfas",
		# 		start_time: DateTime.now,
		# 		end_time: DateTime.now,
		# 		compliance_rate: 0.9, 
		# 		protocol_actions: [
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 		]
		# 	},
		# 	{
		# 		name: "asdfasdf",
		# 		description: "asdfasdfas",
		# 		start_time: DateTime.now,
		# 		end_time: DateTime.now,
		# 		compliance_rate: 0.9, 
		# 		protocol_actions: [
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 			{
		# 				name: "asdfasdf",
		# 				description: "asdfasdfas",
		# 				start_time: DateTime.now,
		# 				end_time: DateTime.now,
		# 				status: 0
		# 			},
		# 		]
		# 	}
		# ]
	end
end

