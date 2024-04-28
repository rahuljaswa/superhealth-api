# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create activity type categories
individual_sport = ActivityTypeCategory.find_or_create_by!(name: "Individual Sport")
team_sport = ActivityTypeCategory.find_or_create_by!(name: "Team Sport")
exercise_and_fitness = ActivityTypeCategory.find_or_create_by!(name: "Exercise & Fitness")
studio_activities = ActivityTypeCategory.find_or_create_by!(name: "Studio Activities")
racket_sports = ActivityTypeCategory.find_or_create_by!(name: "Racket Sports")
outdoor_activities = ActivityTypeCategory.find_or_create_by!(name: "Outdoor Activities")
snow_and_ice_sports = ActivityTypeCategory.find_or_create_by!(name: "Snow and Ice Sports")
water_activities = ActivityTypeCategory.find_or_create_by!(name: "Water Activities")
martial_arts = ActivityTypeCategory.find_or_create_by!(name: "Martial Arts")
other = ActivityTypeCategory.find_or_create_by!(name: "Other")
multisport_activities = ActivityTypeCategory.find_or_create_by!(name: "Multisport Activities")

# Create activity types
activity_types = [
	{
		name: "Archery",
		activity_type_category: individual_sport
	},
	{
		name: "Bowling",
		activity_type_category: individual_sport
	},
	{
		name: "Fencing",
		activity_type_category: individual_sport
	},
	{
		name: "Gymnastics",
		activity_type_category: individual_sport
	},
	{
		name: "Track & Field",
		activity_type_category: individual_sport
	},
	{
		name: "American Football",
		activity_type_category: team_sport
	},
	{
		name: "Australian Football",
		activity_type_category: team_sport
	},
	{
		name: "Baseball",
		activity_type_category: team_sport
	},
	{
		name: "Basketball",
		activity_type_category: team_sport
	},
	{
		name: "Cricket",
		activity_type_category: team_sport
	},
	{
		name: "Disc Sports",
		activity_type_category: team_sport
	},
	{
		name: "Handball",
		activity_type_category: team_sport
	},
	{
		name: "Hockey",
		activity_type_category: team_sport
	},
	{
		name: "Lacrosse",
		activity_type_category: team_sport
	},
	{
		name: "Rugby",
		activity_type_category: team_sport
	},
	{
		name: "Soccer",
		activity_type_category: team_sport
	},
	{
		name: "Softball",
		activity_type_category: team_sport
	},
	{
		name: "Volleyball",
		activity_type_category: team_sport
	},
	{
		name: "Preparation & Recovery",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Flexibility",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Cooldown",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Walking",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Running",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Wheelchair Walk Pace",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Wheelchair Run Pace",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Cycling",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Hand Cycling",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Core Training",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Mixed Cardio",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "High Intensity Interval Training",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Jump Rope",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Stair Climbing",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Stairs",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Step Training",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Fitness Gaming",
		activity_type_category: exercise_and_fitness
	},
	{
		name: "Barre",
		activity_type_category: studio_activities
	},
	{
		name: "Cardio Dance",
		activity_type_category: studio_activities
	},
	{
		name: "Social Dance",
		activity_type_category: studio_activities
	},
	{
		name: "Yoga",
		activity_type_category: studio_activities
	},
	{
		name: "Mind & Body",
		activity_type_category: studio_activities
	},
	{
		name: "Pilates",
		activity_type_category: studio_activities
	},
	{
		name: "Badminton",
		activity_type_category: racket_sports
	},
	{
		name: "Pickleball",
		activity_type_category: racket_sports
	},
	{
		name: "Racquetball",
		activity_type_category: racket_sports
	},
	{
		name: "Squash",
		activity_type_category: racket_sports
	},
	{
		name: "Table Tennis",
		activity_type_category: racket_sports
	},
	{
		name: "Tennis",
		activity_type_category: racket_sports
	},
	{
		name: "Climbing",
		activity_type_category: outdoor_activities
	},
	{
		name: "Equestrian Sports",
		activity_type_category: outdoor_activities
	},
	{
		name: "Fishing",
		activity_type_category: outdoor_activities
	},
	{
		name: "Golf",
		activity_type_category: outdoor_activities
	},
	{
		name: "Hiking",
		activity_type_category: outdoor_activities
	},
	{
		name: "Hunting",
		activity_type_category: outdoor_activities
	},
	{
		name: "Play",
		activity_type_category: outdoor_activities
	},
	{
		name: "Cross Country Skiing",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Curling",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Downhill Skiing",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Snow Sports",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Snowboarding",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Skating Sports",
		activity_type_category: snow_and_ice_sports
	},
	{
		name: "Paddle Sports",
		activity_type_category: water_activities
	},
	{
		name: "Rowing",
		activity_type_category: water_activities
	},
	{
		name: "Sailing",
		activity_type_category: water_activities
	},
	{
		name: "Surfing Sports",
		activity_type_category: water_activities
	},
	{
		name: "Swimming",
		activity_type_category: water_activities
	},
	{
		name: "Water Fitness",
		activity_type_category: water_activities
	},
	{
		name: "Water Polo",
		activity_type_category: water_activities
	},
	{
		name: "Boxing",
		activity_type_category: martial_arts
	},
	{
		name: "Kickboxing",
		activity_type_category: martial_arts
	},
	{
		name: "Martial Arts",
		activity_type_category: martial_arts
	},
	{
		name: "Tai Chi",
		activity_type_category: martial_arts
	},
	{
		name: "Wrestling",
		activity_type_category: martial_arts
	},
	{
		name: "Other",
		activity_type_category: other
	},
	{
		name: "Dance",
		activity_type_category: other
	},
	{
		name: "Dance Inspired Training",
		activity_type_category: other
	},
	{
		name: "Mixed Metabolic Cardio Training",
		activity_type_category: other
	},
	{
		name: "Swim-Bike-Run",
		activity_type_category: multisport_activities
	},
	{
		name: "Underwater Diving",
		activity_type_category: other
	}
]

activity_types.each do |activity_type|
	ActivityType.find_or_create_by!(name: activity_type[:name], activity_type_category: activity_type[:activity_type_category])
end

# Create measurement categories
cardiovascular = MeasurementTypeCategory.find_or_create_by!(name: "Cardiovascular")
mobility = MeasurementTypeCategory.find_or_create_by!(name: "Mobility")
body_composition = MeasurementTypeCategory.find_or_create_by!(name: "Body Composition")
medical = MeasurementTypeCategory.find_or_create_by!(name: "Medical")
sleep_health = MeasurementTypeCategory.find_or_create_by!(name: "Sleep Health")
mental_health = MeasurementTypeCategory.find_or_create_by!(name: "Mental Health")

# Create activity types
measurement_types = [
	{
		name: "Daily Steps",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Daily Miles",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Resting Heart Rate",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Heart Rate Variability",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Heart Rate Recovery",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Walking Heart Rate Average",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "VO2 Max",
		description: "Lorem ipsum",
		measurement_type_category: cardiovascular
	},
	{
		name: "Daily Stand Time",
		description: "Lorem ipsum",
		measurement_type_category: mobility
	},
	{
		name: "Weight",
		description: "Lorem ipsum",
		measurement_type_category: body_composition
	},
	{
		name: "Body Fat Percentage",
		description: "Lorem ipsum",
		measurement_type_category: body_composition
	},
	{
		name: "Lean Body Mass",
		description: "Lorem ipsum",
		measurement_type_category: body_composition
	},
	{
		name: "Fasting Blood Glucose",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "LDL",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "VLDL",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "HDL",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "Lp(a)",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "ApoB",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "ALT",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "A1C",
		description: "Lorem ipsum",
		measurement_type_category: medical
	},
	{
		name: "Daily Total Sleep Time",
		description: "Lorem ipsum",
		measurement_type_category: sleep_health
	},
	{
		name: "Daily Deep Sleep Time",
		description: "Lorem ipsum",
		measurement_type_category: sleep_health
	},
	{
		name: "Daily REM Sleep Time",
		description: "Lorem ipsum",
		measurement_type_category: sleep_health
	},
	{
		name: "Daily Awake Time",
		description: "Lorem ipsum",
		measurement_type_category: sleep_health
	},
	{
		name: "Daily Stress Time",
		description: "Lorem ipsum",
		measurement_type_category: mental_health
	}
]

measurement_types.each do |measurement_type|
	MeasurementType.find_or_create_by!(name: measurement_type[:name], description: measurement_type[:description], measurement_type_category: measurement_type[:measurement_type_category])
end
