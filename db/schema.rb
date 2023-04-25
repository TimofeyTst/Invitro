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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complaints", id: :serial, force: :cascade do |t|
    t.integer "visit_id", null: false
    t.text "complaint_text"
  end

  create_table "diagnoses", id: :serial, force: :cascade do |t|
    t.integer "visit_id", null: false
    t.text "diagnosis_text"
  end

  create_table "doctors", id: :serial, force: :cascade do |t|
    t.string "full_name", null: false
    t.integer "specialty_id", null: false
    t.date "hire_date", null: false
    t.date "dismissal_date"
  end

  create_table "patients", id: :serial, force: :cascade do |t|
    t.string "full_name", null: false
    t.date "date_of_birth", null: false
    t.string "home_address"
    t.date "registration_date", null: false
    t.integer "medical_record_number", null: false
  end

  create_table "prescriptions", id: :serial, force: :cascade do |t|
    t.integer "diagnos_id", null: false
    t.text "text"
  end

  create_table "rooms", id: :serial, force: :cascade do |t|
    t.string "room_number", null: false
  end

  create_table "speciality", id: :serial, force: :cascade do |t|
    t.string "specialty_name", null: false
  end

  create_table "visits", id: :serial, force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "doctor_id", null: false
    t.date "visit_date", null: false
    t.time "visit_time", null: false
    t.integer "room_id", null: false
    t.boolean "attended", default: false
  end

  add_foreign_key "complaints", "visits", name: "fg_complaints_visits"
  add_foreign_key "diagnoses", "visits", name: "fg_diagnoses_visits"
  add_foreign_key "doctors", "speciality", column: "specialty_id", name: "fg_doctors_speciality"
  add_foreign_key "prescriptions", "diagnoses", column: "diagnos_id", name: "fg_prescriptions_diagnos"
  add_foreign_key "visits", "doctors", name: "fg_visits_doctors"
  add_foreign_key "visits", "patients", name: "fg_visits_patients"
  add_foreign_key "visits", "rooms", name: "fg_visits_rooms"
end
