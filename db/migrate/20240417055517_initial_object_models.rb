class InitialObjectModels < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      # ACTIVITY belongs_to ACTIVITY_TYPE
      t.belongs_to :activity_type, index: true
      # ACTIVITY belongs_to USER
      t.belongs_to :user, index: true

      t.float :active_time
      t.float :calories_expended
      t.datetime :end_time
      t.integer :minimum_zone_two_heart_rate
      t.integer :minimum_zone_three_heart_rate
      t.integer :minimum_zone_four_heart_rate
      t.integer :minimum_zone_five_heart_rate
      t.datetime :start_time

      t.string :client_uuid, index: { unique: true }

      t.timestamps
    end

    create_table :activity_type_categories do |t|
      t.string :name, index: { unique: true }
      
      t.timestamps
    end

    create_table :activity_types do |t|
      t.string :name, index: { unique: true }
      # ACTIVITY_TYPE belongs_to ACTIVITY_TYPE_CATEGORY
      t.belongs_to :activity_type_category
      
      t.timestamps
    end

    create_table :images do |t|
      # IMAGES belongs_to ACTIVITY_TYPE
      t.belongs_to :activity, index: true
      # IMAGES belongs_to ACTIVITY_TYPE
      t.belongs_to :activity_type, index: true
      # IMAGES belongs_to MEAL
      t.belongs_to :meal, index: true
      # IMAGES belongs_to USER
      t.belongs_to :user, index: true

      t.string :caption
      t.string :original_url
    end

    create_table :meals do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :meal_components do |t|
      t.string :name
      t.string :description

      t.float :calories
      t.float :fat
      t.float :monounsaturated_fat
      t.float :polyunsaturated_fat
      t.float :carbohydrates
      t.float :fiber
      t.float :sugar
      t.float :protein

      t.float :cholesterol
      t.float :vitamin_a
      t.float :thiamin
      t.float :riboflavin
      t.float :niacin
      t.float :vitamin_b5
      t.float :vitamin_b6
      t.float :vitamin_b7
      t.float :vitamin_b12
      t.float :vitamin_c
      t.float :vitamin_d
      t.float :vitamin_e
      t.float :vitamin_k
      t.float :folate
      t.float :calcium
      t.float :chloride
      t.float :iron
      t.float :magnesium
      t.float :phosphorus
      t.float :potassium
      t.float :sodium
      t.float :zinc
      t.float :caffeine
      t.float :chromium
      t.float :copper
      t.float :iodine
      t.float :manganese
      t.float :molybdenum
      t.float :selenium

      t.timestamps
    end

    create_table :measurements do |t|
      # MEASUREMENT belongs_to MEASUREMENT_TYPES
      t.belongs_to :measurement_type, index: true
      # MEASUREMENT belongs_to USERS
      t.belongs_to :user, index: true

      t.float :amount
      t.string :units
      t.integer :calculation_type, default: 0
      t.datetime :start_time
      t.datetime :end_time
      t.string :source
      t.float :quality

      t.string :client_uuid, index: { unique: true }

      t.timestamps
    end

    create_table :measurement_types do |t|
      # MEASUREMENT_TYPES belongs_to MEASUREMENT_TYPE_CATEGORIES
      t.belongs_to :measurement_type_category, index: true
      
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :measurement_type_categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :protocols do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.float :compliance_rate

      t.timestamps
    end

    create_table :protocol_actions do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status, default: 0

      t.timestamps
    end

    # MEALS has_many MEAL_COMPONENTS
    # MEAL_COMPONENTS has_many MEALS
    create_join_table :meals, :meal_components do |t|
      t.index :meal_id
      t.index :meal_component_id
    end

    # USERS has_many MEALS
    # MEALS has_many USERS
    create_join_table :meals, :users do |t|
      t.index :meal_id
      t.index :user_id
    end

    # USER has_many MEASUREMENT_SUMMARIES
    # MEASUREMENT_TYPES has_many USERS
    create_join_table :users, :measurement_types, table_name: :measurement_type_user_summaries do |t|
      t.index :measurement_type_id
      t.index :user_id
      t.index [:measurement_type_id, :user_id], unique: true

      t.float :latest_value
      t.float :average_7_days
      t.float :average_30_days
      t.float :average_90_days
      t.float :change_7_days
      t.float :change_30_days
      t.float :change_90_days
      t.float :percent_change_7_days
      t.float :percent_change_30_days
      t.float :percent_change_90_days

      t.timestamps
    end

    # USER has_many PROTOCOLS
    # PROTOCOLS has_many USERS
    create_join_table :users, :protocols do |t|
      t.index :user_id
      t.index :protocol_id
    end
  end
end
