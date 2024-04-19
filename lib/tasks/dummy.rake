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

namespace :dummy do
	task :populate => :environment do

		# Create 1 dummy users
		1.times do |count|
			user = User.new
			user.username = Faker::Internet.user_name
			user.email = Faker::Internet.email(user.username)
			user.password = "111111111"
			user.password_confirmation = "111111111"
			user.images << create_dummy_image(user.username)
			user.save
		end

		user = User.where(id: 1)

		# Create activity types
		activity_types = [
			{
				name: "Archery",
				activity_type: "Individual Sport"
			},
			{
				name: "Bowling",
				activity_type: "Individual Sport"
			},
			{
				name: "Fencing",
				activity_type: "Individual Sport"
			},
			{
				name: "Gymnastics",
				activity_type: "Individual Sport"
			},
			{
				name: "Track & Field",
				activity_type: "Individual Sport"
			},
			{
				name: "American Football",
				activity_type: "Team Sport"
			},
			{
				name: "Australian Football",
				activity_type: "Team Sport"
			},
			{
				name: "Baseball",
				activity_type: "Team Sport"
			},
			{
				name: "Basketball",
				activity_type: "Team Sport"
			},
			{
				name: "Cricket",
				activity_type: "Team Sport"
			},
			{
				name: "Disc Sports",
				activity_type: "Team Sport"
			},
			{
				name: "Handball",
				activity_type: "Team Sport"
			},
			{
				name: "Hockey",
				activity_type: "Team Sport"
			},
			{
				name: "Lacrosse",
				activity_type: "Team Sport"
			},
			{
				name: "Rugby",
				activity_type: "Team Sport"
			},
			{
				name: "Soccer",
				activity_type: "Team Sport"
			},
			{
				name: "Softball",
				activity_type: "Team Sport"
			},
			{
				name: "Volleyball",
				activity_type: "Team Sport"
			},
			{
				name: "Preparation & Recovery",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Flexibility",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Cooldown",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Walking",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Running",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Wheelchair Walk Pace",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Wheelchair Run Pace",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Cycling",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Hand Cycling",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Core Training",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Mixed Cardio",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "High Intensity Interval Training",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Jump Rope",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Stair Climbing",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Stairs",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Step Training",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Fitness Gaming",
				activity_type: "Exercise & Fitness"
			},
			{
				name: "Barre",
				activity_type: "Studio Activities"
			},
			{
				name: "Cardio Dance",
				activity_type: "Studio Activities"
			},
			{
				name: "Social Dance",
				activity_type: "Studio Activities"
			},
			{
				name: "Yoga",
				activity_type: "Studio Activities"
			},
			{
				name: "Mind & Body",
				activity_type: "Studio Activities"
			},
			{
				name: "Pilates",
				activity_type: "Studio Activities"
			},
			{
				name: "Badminton",
				activity_type: "Racket Sports"
			},
			{
				name: "Pickleball",
				activity_type: "Racket Sports"
			},
			{
				name: "Racquetball",
				activity_type: "Racket Sports"
			},
			{
				name: "Squash",
				activity_type: "Racket Sports"
			},
			{
				name: "Table Tennis",
				activity_type: "Racket Sports"
			},
			{
				name: "Tennis",
				activity_type: "Racket Sports"
			},
			{
				name: "Climbing",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Equestrian Sports",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Fishing",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Golf",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Hiking",
				activity_type: "Outdoor Activities",
				activities: [
					{
						user: user.id,
						active_time: 120000,
						calories_expended: 400,
						end_time: DateTime.now - 12.hours,
						minimum_zone_two_heart_rate: 120,
						minimum_zone_three_heart_rate: 130,
						minimum_zone_four_heart_rate: 140,
						minimum_zone_five_heart_rate: 150,
						start_time: DateTime.now - 13.hours
					}
				]
			},
			{
				name: "Hunting",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Play",
				activity_type: "Outdoor Activities"
			},
			{
				name: "Cross Country Skiing",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Curling",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Downhill Skiing",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Snow Sports",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Snowboarding",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Skating Sports",
				activity_type: "Snow and Ice Sports"
			},
			{
				name: "Paddle Sports",
				activity_type: "Water Activities"
			},
			{
				name: "Rowing",
				activity_type: "Water Activities"
			},
			{
				name: "Sailing",
				activity_type: "Water Activities"
			},
			{
				name: "Surfing Sports",
				activity_type: "Water Activities"
			},
			{
				name: "Swimming",
				activity_type: "Water Activities"
			},
			{
				name: "Water Fitness",
				activity_type: "Water Activities"
			},
			{
				name: "Water Polo",
				activity_type: "Water Activities"
			},
			{
				name: "Boxing",
				activity_type: "Martial Arts"
			},
			{
				name: "Kickboxing",
				activity_type: "Martial Arts"
			},
			{
				name: "Martial Arts",
				activity_type: "Martial Arts"
			},
			{
				name: "Tai Chi",
				activity_type: "Martial Arts"
			},
			{
				name: "Wrestling",
				activity_type: "Martial Arts"
			},
			{
				name: "Other",
				activity_type: "Other"
			},
			{
				name: "Dance",
				activity_type: "Other"
			},
			{
				name: "Dance Inspired Training",
				activity_type: "Other"
			},
			{
				name: "Mixed Metabolic Cardio Training",
				activity_type: "Other"
			},
			{
				name: "Swim-Bike-Run",
				activity_type: "Multisport Activities"
			},
			{
				name: "Underwater Diving",
				activity_type: "Other"
			}
		]

		meals = [
			{
				name: "Meal Component 1",
				description: "Meal Component Description 1",
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
			},
			{
				name: "Meal Component 2",
				description: "Meal Component Description 2",
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
			},
			{
				name: "Meal Component 3",
				description: "Meal Component Description 3",
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
			},
			{
				name: "Meal Component 4",
				description: "Meal Component Description 4",
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
			},
			{
				name: "Meal Component 5",
				description: "Meal Component Description 5",
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
			}
		]

		measurement_categories = [
			{
				name: "asdfas",
				description: "asdfasdfasdf",
				measurements: [
					{
						name: "asdfasdf",
						description: "adsasdfas",
						latest_value: 123,
						average_7_days: 123,
						average_30_days: 123,
						average_90_days: 123,
						change_7_days: 20,
						change_30_days: 20,
						change_90_days: 20,
						percent_change_7_days: 0.9,
						percent_change_30_days: 0.9,
						percent_change_90_days: 0.9,
						measurement_values: [
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							}
						]
					},
					{
						name: "asdfasdf",
						description: "adsasdfas",
						latest_value: 123,
						average_7_days: 123,
						average_30_days: 123,
						average_90_days: 123,
						change_7_days: 20,
						change_30_days: 20,
						change_90_days: 20,
						percent_change_7_days: 0.9,
						percent_change_30_days: 0.9,
						percent_change_90_days: 0.9,
						measurement_values: [
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							}
						]
					},
					{
						name: "asdfasdf",
						description: "adsasdfas",
						latest_value: 123,
						average_7_days: 123,
						average_30_days: 123,
						average_90_days: 123,
						change_7_days: 20,
						change_30_days: 20,
						change_90_days: 20,
						percent_change_7_days: 0.9,
						percent_change_30_days: 0.9,
						percent_change_90_days: 0.9,
						measurement_values: [
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							}
						]
					},
					{
						name: "asdfasdf",
						description: "adsasdfas",
						latest_value: 123,
						average_7_days: 123,
						average_30_days: 123,
						average_90_days: 123,
						change_7_days: 20,
						change_30_days: 20,
						change_90_days: 20,
						percent_change_7_days: 0.9,
						percent_change_30_days: 0.9,
						percent_change_90_days: 0.9,
						measurement_values: [
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							},
							{
								amount: 123,
								units: "lbs",
								description: "asdasdf",
								calculation_type: 1,
								start_time: DateTime.now,
								end_time: DateTime.now,
								source: "asdfasd",
								quality: 0.8
							}
						]
					}
				]
			}
		]

		protocols = [
			{
				name: "asdfasdf",
				description: "asdfasdfas",
				start_time: DateTime.now,
				end_time: DateTime.now,
				compliance_rate: 0.9, 
				protocol_actions: [
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
				]
			},
			{
				name: "asdfasdf",
				description: "asdfasdfas",
				start_time: DateTime.now,
				end_time: DateTime.now,
				compliance_rate: 0.9, 
				protocol_actions: [
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
				]
			},
			{
				name: "asdfasdf",
				description: "asdfasdfas",
				start_time: DateTime.now,
				end_time: DateTime.now,
				compliance_rate: 0.9, 
				protocol_actions: [
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
				]
			},
			{
				name: "asdfasdf",
				description: "asdfasdfas",
				start_time: DateTime.now,
				end_time: DateTime.now,
				compliance_rate: 0.9, 
				protocol_actions: [
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
					{
						name: "asdfasdf",
						description: "asdfasdfas",
						start_time: DateTime.now,
						end_time: DateTime.now,
						status: 0
					},
				]
			}
		]

		# Create activities/activity_types
		activity_types.each do |activity_type_json|
		end		

		# Create meals
		meals.each do |meal_json|
		end

		# Create measurements/measurement_categories/measurement_values
		measurement_categories.each do |measurement_category_json|
		end

		# Create protocols
		protocols.each do |protocol_json|
		end
	end
end

