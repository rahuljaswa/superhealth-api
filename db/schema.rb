# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_17_055517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "activity_type_id"
    t.bigint "user_id"
    t.float "active_time"
    t.float "calories_expended"
    t.datetime "end_time"
    t.integer "minimum_zone_two_heart_rate"
    t.integer "minimum_zone_three_heart_rate"
    t.integer "minimum_zone_four_heart_rate"
    t.integer "minimum_zone_five_heart_rate"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_type_id"], name: "index_activities_on_activity_type_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "activity_type_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_types", force: :cascade do |t|
    t.string "name"
    t.bigint "activity_type_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_type_category_id"], name: "index_activity_types_on_activity_type_category_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "activity_id"
    t.bigint "activity_type_id"
    t.bigint "meal_id"
    t.bigint "user_id"
    t.string "caption"
    t.string "original_url"
    t.index ["activity_id"], name: "index_images_on_activity_id"
    t.index ["activity_type_id"], name: "index_images_on_activity_type_id"
    t.index ["meal_id"], name: "index_images_on_meal_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "meal_components", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "calories"
    t.float "fat"
    t.float "monounsaturated_fat"
    t.float "polyunsaturated_fat"
    t.float "carbohydrates"
    t.float "fiber"
    t.float "sugar"
    t.float "protein"
    t.float "cholesterol"
    t.float "vitamin_a"
    t.float "thiamin"
    t.float "riboflavin"
    t.float "niacin"
    t.float "vitamin_b5"
    t.float "vitamin_b6"
    t.float "vitamin_b7"
    t.float "vitamin_b12"
    t.float "vitamin_c"
    t.float "vitamin_d"
    t.float "vitamin_e"
    t.float "vitamin_k"
    t.float "folate"
    t.float "calcium"
    t.float "chloride"
    t.float "iron"
    t.float "magnesium"
    t.float "phosphorus"
    t.float "potassium"
    t.float "sodium"
    t.float "zinc"
    t.float "caffeine"
    t.float "chromium"
    t.float "copper"
    t.float "iodine"
    t.float "manganese"
    t.float "molybdenum"
    t.float "selenium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_components_meals", id: false, force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "meal_component_id", null: false
    t.index ["meal_component_id"], name: "index_meal_components_meals_on_meal_component_id"
    t.index ["meal_id"], name: "index_meal_components_meals_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals_users", id: false, force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "user_id", null: false
    t.index ["meal_id"], name: "index_meals_users_on_meal_id"
    t.index ["user_id"], name: "index_meals_users_on_user_id"
  end

  create_table "measurement_type_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurement_types", force: :cascade do |t|
    t.bigint "measurement_type_category_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measurement_type_category_id"], name: "index_measurement_types_on_measurement_type_category_id"
  end

  create_table "measurement_values", force: :cascade do |t|
    t.bigint "measurement_id"
    t.float "amount"
    t.string "units"
    t.string "description"
    t.integer "calculation_type", default: 0
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "source"
    t.float "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measurement_id"], name: "index_measurement_values_on_measurement_id"
  end

  create_table "measurement_values_measurements", id: false, force: :cascade do |t|
    t.bigint "measurement_id", null: false
    t.bigint "measurement_value_id", null: false
    t.index ["measurement_id"], name: "index_measurement_values_measurements_on_measurement_id"
    t.index ["measurement_value_id"], name: "index_measurement_values_measurements_on_measurement_value_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.bigint "measurement_type_id"
    t.bigint "user_id"
    t.float "latest_value"
    t.float "average_7_days"
    t.float "average_30_days"
    t.float "average_90_days"
    t.float "change_7_days"
    t.float "change_30_days"
    t.float "change_90_days"
    t.float "percent_change_7_days"
    t.float "percent_change_30_days"
    t.float "percent_change_90_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measurement_type_id"], name: "index_measurements_on_measurement_type_id"
    t.index ["user_id"], name: "index_measurements_on_user_id"
  end

  create_table "protocol_actions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protocols", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.float "compliance_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protocols_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "protocol_id", null: false
    t.index ["protocol_id"], name: "index_protocols_users_on_protocol_id"
    t.index ["user_id"], name: "index_protocols_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "phone_number"
    t.string "phone_number_verification_code"
    t.datetime "phone_number_verification_code_sent_at"
    t.datetime "phone_number_verified_at"
    t.string "email", null: false
    t.string "email_verification_code"
    t.datetime "email_verification_code_sent_at"
    t.datetime "email_verified_at"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "confirmation_token"
    t.string "unconfirmed_email"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.json "tokens"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
