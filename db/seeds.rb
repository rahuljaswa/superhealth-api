activities = {
	"Individual Sport": [
		"Archery",
		"Bowling",
		"Fencing",
		"Gymnastics",
		"Track & Field"		
	],
	"Team Sport": [
		"American Football",
		"Australian Football",
		"Baseball",
		"Basketball",
		"Cricket",
		"Disc Sports",
		"Handball",
		"Hockey",
		"Lacrosse",
		"Rugby",
		"Soccer",
		"Softball",
		"Volleyball"
	],
	"Exercise & Fitness": [
		"Preparation & Recovery",
		"Flexibility",
		"Cooldown",
		"Walking",
		"Running",
		"Elliptical",
		"Wheelchair Walk Pace",
		"Wheelchair Run Pace",
		"Cycling",
		"Hand Cycling",
		"Core Training",
		"Mixed Cardio",
		"High Intensity Interval Training",
		"Jump Rope",
		"Stair Climbing",
		"Stairs",
		"Step Training",
		"Fitness Gaming",
		"Functional Strength Training",
		"Traditional Strength Training"
	],
	"Studio Activities": [
		"Dance",
		"Dance Inspired Training",
		"Barre",
		"Cardio Dance",
		"Social Dance",
		"Yoga",
		"Mind & Body",
		"Pilates"
	],
	"Racket Sports": [
		"Badminton",
		"Pickleball",
		"Racquetball",
		"Squash",
		"Table Tennis",
		"Tennis"
	],
	"Outdoor Activities": [
		"Climbing",
		"Equestrian Sports",
		"Fishing",
		"Golf",
		"Hiking",
		"Hunting",
		"Play"
	],
	"Snow & Ice Sports": [
		"Cross Country Skiing",
		"Curling",
		"Downhill Skiing",
		"Snow Sports",
		"Snowboarding",
		"Skating Sports"
	],
	"Water Activities": [
		"Paddle Sports",
		"Rowing",
		"Sailing",
		"Surfing Sports",
		"Swimming",
		"Water Fitness",
		"Water Polo"
	],
	"Martial Arts": [
		"Boxing",
		"Kickboxing",
		"Martial Arts",
		"Tai Chi",
		"Wrestling"
	],
	"Multisport Activities": [
		"Swim-Bike-Run",
		"Cross Training"
	],
	"Other": [
		"Other",
		"Mixed Metabolic Cardio Training",
		"Underwater Diving"
	]
}

activities.each do |category, types|
	activity_type_category = ActivityTypeCategory.find_or_create_by(name: category)

	types.each do |type|
		ActivityType.find_or_create_by(name: type, activity_type_category: activity_type_category)
	end
end

measurements = {
	"Cardiovascular": [
		"Daily Steps",
		"Daily Walking Running Distance",
		"Resting Heart Rate",
		"Heart Rate Variability",
		"Heart Rate Recovery",
		"Walking Heart Rate Average",
		"VO2 Max",
		"Peak Expiratory Flow Rate"
	],
	"Mobility": [
		"Daily Stand Time"
	],
	"Body Composition": [
		"Weight",
		"Body Fat Percentage",
		"Lean Body Mass",
		"Height",
		"Body Mass Index",
		"Waist Circumference"
	],
	"Medical": [
		"Fasting Blood Glucose",
		"Respiratory Rate",
		"Oxygen Saturation",
		"Blood Pressure Diastolic",
		"Blood Pressure Systolic",
		"LDL",
		"VLDL",
		"HDL",
		"Lp(a)",
		"ApoB",
		"ALT",
		"A1C"
	],
	"Sleep": [
		"Daily Total Sleep Time",
		"Daily Deep Sleep Time",
		"Daily REM Sleep Time",
		"Daily Awake Time"
	],
	"Mental Health": [
		"Daily Stress Time"		
	],
}

measurements.each do |category, types|
	measurement_type_category = MeasurementTypeCategory.find_or_create_by(name: category)

	types.each do |type|
		MeasurementType.find_or_create_by(name: type, measurement_type_category: measurement_type_category)
	end
end
