# README

## SETUP

### SETTING UP RESQUE WORKERS

* Install Redis Cloud on Heroku
* Start Redis: redis-server
* Start Workers: rake resque:work QUEUE=*


### CLEARING WORKERS

```
Resque.workers.each {|w| w.unregister_worker}
```

### DATA MODEL


## User

- First Name
- Last Name
- Phone
- Preferences
- Food


## MeasurementValue

- Quantity
- Units
- Description
- Calculation Type
- Start Date
- End Date
- Source
- Quality


## MeasurementCategory

- Name
- Description
- has_and_belongs_to_many Measurements


## Measurement

- User
- Name
- Description
- Latest Value
- 7 Day Average
- 30 Day Average
- 90 Day Average
- Week Over Week Change
- Month Over Month Change
- Quarter Over Quarter Change
- has_and_belongs_to_many MeasurementValues
- has_and_belongs_to_many MeasurementCategories


### Measurement Examples

- Cardio: Daily Steps, Daily Miles, Resting Heart Rate, HRV, Heart Rate Recovery, Walking Heart Rate Average, VO2 Max, Heart Rate Zone 1, Heart Rate Zone 2, Heart Rate Zone 3, Heart Rate Zone 4, Heart Rate Zone 5
- Mobility: Daily Stand Time
- Body Composition: Weight, Body Fat Percentage, Lean Body Mass
- Medical: Fasting Blood Glucose, LDL, VLDL, HDL, Lp(a), ApoB, ALT, A1C
- Sleep: Daily Total Sleep, Daily Deep Sleep, Daily REM Sleep, Daily Awake Time
- Mental Health: Daily Stress


## Meal

- Name
- has_and_belongs_to_many MealComponents
- has_and_belongs_to_many Users


## MealComponent

- Name
- Description
- Calories
- Carbohydrates
- Fiber
- Sugar
- Fat
- Monounsaturated Fat
- Polyunsaturated Fat
- Saturated Fat
- Cholesterol
- Protein
- Vitamin A
- Thiamin
- Riboflavin
- Niacin
- Vitamin B5 (Pantothenic Acid)
- Vitamin B6 (Pyridoxine)
- Vitamin B7 (Biotin)
- Vitamin B12 (Cyanocobalamin)
- Vitamin C
- Vitamin D
- Vitamin E
- Vitamin K
- Folate
- Calcium
- Chloride
- Iron
- Magnesium
- Phosphorus
- Potassium
- Sodium 
- Zinc
- Caffeine
- Chromium
- Copper
- Iodine
- Manganese
- Molybdenum
- Selenium


## Activity

- Type
- Time
- Calories
- Time Per Zone


## Protocol

- Name
- Description
- Start Date
- End Date
- Compliance Rate
- has_and_belongs_to_many ProtocolActions
- has_and_belongs_to_many Users


### Protocol Examples

- Nutrition
- Energy Balance
- Protein
- Sleep
- Mental Health
- Cardio
- Strength
- Stability
- Aerobic Efficiency
- Anaerobic Performance
- Supplements/Medications


## ProtocolAction

- Title
- Description
- Status
- Start Date
- End Date


### ProtocolAction Examples

- Energy Balance: daily calorie deficit of 500-1000
- Nutrition: avoid food until 4p



Protocol impacts?
