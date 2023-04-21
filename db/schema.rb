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

  create_table "attempts", id: :serial, force: :cascade do |t|
    t.serial "student_id", null: false
    t.serial "variant_id", null: false
    t.serial "teacher_discipline_id", null: false
    t.integer "attempt_num", null: false
    t.integer "mark", null: false
    t.date "date_of_exam"
  end

  create_table "disciplines", id: :serial, force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.index ["name"], name: "unique_name", unique: true
  end

  create_table "persons", id: :serial, force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "second_name", limit: 30, null: false
    t.string "patronymic", limit: 30, null: false
    t.string "role_id", limit: 1, null: false
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.string "question", limit: 100, null: false
    t.string "part", limit: 1, null: false
    t.string "answer", limit: 100, null: false
    t.integer "mark", null: false
    t.serial "discipline_id", null: false
    t.index ["question"], name: "unique_question", unique: true
  end

  create_table "students", id: :serial, force: :cascade do |t|
    t.serial "person_id", null: false
    t.date "date_of_entering", null: false
  end

  create_table "teachers", id: :serial, force: :cascade do |t|
    t.serial "person_id", null: false
  end

  create_table "teachers_disciplines", id: :serial, force: :cascade do |t|
    t.serial "teacher_id", null: false
    t.serial "discipline_id", null: false
    t.boolean "status", null: false
  end

  create_table "variants", id: :serial, force: :cascade do |t|
    t.integer "var_num", null: false
    t.serial "question_1", null: false
    t.serial "question_2", null: false
  end

  add_foreign_key "attempts", "students", name: "attempts_student_id_fkey", on_update: :cascade
  add_foreign_key "attempts", "teachers_disciplines", column: "teacher_discipline_id", name: "attempts_teacher_discipline_id_fkey", on_update: :cascade
  add_foreign_key "attempts", "variants", name: "attempts_variant_id_fkey", on_update: :cascade
  add_foreign_key "questions", "disciplines", name: "questions_discipline_id_fkey", on_update: :cascade
  add_foreign_key "students", "persons", name: "students_person_id_fkey", on_update: :cascade
  add_foreign_key "teachers", "persons", name: "teachers_person_id_fkey", on_update: :cascade
  add_foreign_key "teachers_disciplines", "disciplines", name: "teachers_disciplines_discipline_id_fkey", on_update: :cascade
  add_foreign_key "teachers_disciplines", "teachers", name: "teachers_disciplines_teacher_id_fkey", on_update: :cascade
  add_foreign_key "variants", "questions", column: "question_1", name: "variants_question_1_fkey", on_update: :cascade
  add_foreign_key "variants", "questions", column: "question_2", name: "variants_question_2_fkey", on_update: :cascade
end
