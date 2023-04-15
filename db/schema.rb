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

  create_table "answers", id: :serial, force: :cascade do |t|
    t.string "description", limit: 100, null: false
    t.integer "mark", null: false
    t.serial "question_id", null: false
  end

  create_table "attempts", id: :serial, force: :cascade do |t|
    t.serial "student_id", null: false
    t.serial "discipline_id", null: false
    t.serial "variant_id", null: false
    t.datetime "date", precision: nil
  end

  create_table "disciplines", id: :serial, force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.serial "teacher_id", null: false
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.serial "discipline_id", null: false
    t.string "part", limit: 1, null: false
  end

  create_table "students", id: :serial, force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "second_name", limit: 30, null: false
    t.integer "course", null: false
    t.string "group_code", limit: 10, null: false
  end

  create_table "teachers", id: :serial, force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "second_name", limit: 30, null: false
  end

  create_table "themes", id: :serial, force: :cascade do |t|
    t.integer "theme_num", null: false
    t.serial "discipline_id", null: false
    t.serial "question_id", null: false
  end

  create_table "variants", id: :serial, force: :cascade do |t|
    t.integer "var_num", null: false
    t.serial "question_id", null: false
    t.serial "discipline_id", null: false
  end

  add_foreign_key "answers", "questions", name: "answers_question_id_fkey", on_update: :cascade
  add_foreign_key "attempts", "disciplines", name: "attempts_discipline_id_fkey", on_update: :cascade
  add_foreign_key "attempts", "students", name: "attempts_student_id_fkey", on_update: :cascade
  add_foreign_key "attempts", "variants", name: "attempts_variant_id_fkey", on_update: :cascade
  add_foreign_key "disciplines", "teachers", name: "disciplines_teacher_id_fkey", on_update: :cascade
  add_foreign_key "questions", "disciplines", name: "questions_discipline_id_fkey", on_update: :cascade
  add_foreign_key "themes", "disciplines", name: "themes_discipline_id_fkey", on_update: :cascade
  add_foreign_key "themes", "questions", name: "themes_question_id_fkey", on_update: :cascade
  add_foreign_key "variants", "disciplines", name: "variants_discipline_id_fkey", on_update: :cascade
  add_foreign_key "variants", "questions", name: "variants_question_id_fkey", on_update: :cascade
end
