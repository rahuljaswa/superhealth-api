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
       { "Daily Steps": "count" },
       { "Daily Walking Running Distance": "m" },
       { "Resting Heart Rate": "count/min" },
       { "Heart Rate Variability": "ms" },
       { "Heart Rate Recovery": "count/min" },
       { "Walking Heart Rate Average": "count/min" },
       { "VO2 Max": "ml/(kg*min)" },
       { "Peak Expiratory Flow Rate:": "L/min" }
   ],
   "Mobility": [
       { "Daily Stand Time": "min" }
   ],
   "Body Composition": [
       { "Weight": "kg" },
       { "Body Fat Percentage": "%" },
       { "Lean Body Mass": "kg" },
       { "Height": "m" },
       { "Body Mass Index": "count" },
       { "Waist Circumference": "m" }
   ],
   "Medical": [
       { "Fasting Blood Glucose": "mg/dL" },
       { "Respiratory Rate": "count/min" },
       { "Oxygen Saturation": "%" },
       { "Blood Pressure Diastolic": "mmHg" },
       { "Blood Pressure Systolic": "mmHg" },
       { "LDL": "mg/dL" },
       { "VLDL": "mg/dL" },
       { "HDL": "mg/dL" },
       { "Lp(a)": "mg/dL" },
       { "ApoB": "mg/dL" },
       { "ALT": "U/L" },
       { "A1C": "mg/dL" }
   ],
   "Sleep": [
       { "Daily Total Sleep Time": "min" },
       { "Daily Deep Sleep Time": "min" },
       { "Daily REM Sleep Time": "min" },
       { "Daily Awake Time": "min" }
   ],
   "Mental Health": [
       { "Daily Stress Time": "min" }
   ]
}

measurements.each do |category, types|
	measurement_type_category = MeasurementTypeCategory.find_or_create_by(name: category)

	types.each do |type|
		type.each do |name, default_units|
			MeasurementType.find_or_create_by(name: name, measurement_type_category: measurement_type_category, default_units: default_units)
		end
	end
end
