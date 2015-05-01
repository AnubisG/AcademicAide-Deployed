# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150126065735) do

  create_table "course_comments", force: :cascade do |t|
    t.string   "author"
    t.integer  "course_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "class_id"
    t.string   "teacher"
    t.text     "students"
    t.string   "course_name"
    t.text     "class_description"
    t.string   "corresponding_course"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.string   "author"
    t.text     "course_description"
    t.text     "syllabus"
    t.text     "worksheets"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "general_comments", force: :cascade do |t|
    t.string   "author"
    t.integer  "comment_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hw_records", force: :cascade do |t|
    t.string   "worksheet"
    t.text     "questions"
    t.text     "student_answers"
    t.string   "students_name"
    t.string   "completeness"
    t.string   "grade"
    t.text     "grader_comments"
    t.string   "class_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "question_comments", force: :cascade do |t|
    t.string   "author"
    t.integer  "question_id"
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "author"
    t.integer  "suggested_grade"
    t.boolean  "arithmetic"
    t.boolean  "addition"
    t.boolean  "subtraction"
    t.boolean  "multiplication"
    t.boolean  "division"
    t.boolean  "long_division"
    t.boolean  "reading"
    t.boolean  "trick_question"
    t.boolean  "multiple_choices"
    t.string   "multiple_choice_answer"
    t.boolean  "word_problem"
    t.text     "word_problem_solution_equation"
    t.boolean  "integer"
    t.boolean  "decimal"
    t.integer  "number_of_decimals"
    t.boolean  "fraction"
    t.boolean  "fraction_to_decimal"
    t.boolean  "decimal_to_fraction"
    t.integer  "significant_digits"
    t.boolean  "scientific_notation"
    t.boolean  "parenthesis"
    t.boolean  "exponent"
    t.boolean  "roots"
    t.boolean  "square_root"
    t.boolean  "cube_root"
    t.boolean  "factoring"
    t.boolean  "foil"
    t.boolean  "variables"
    t.integer  "number_of_variables"
    t.boolean  "imaginary_number"
    t.boolean  "degree"
    t.boolean  "radian"
    t.boolean  "trigonometry"
    t.boolean  "sin"
    t.boolean  "cos"
    t.boolean  "tan"
    t.boolean  "csc"
    t.boolean  "sec"
    t.boolean  "cot"
    t.boolean  "arcsin"
    t.boolean  "arccos"
    t.boolean  "arctan"
    t.boolean  "arccsc"
    t.boolean  "arcsec"
    t.boolean  "arccot"
    t.boolean  "simple_shapes_area"
    t.boolean  "simple_shapes_circumference"
    t.boolean  "simple_shapes_volume"
    t.boolean  "combination_shapes_area"
    t.boolean  "combination_shapes_circumference"
    t.boolean  "combination_shapes_volume"
    t.boolean  "ratios"
    t.boolean  "functions"
    t.boolean  "equation"
    t.boolean  "inequality"
    t.boolean  "plotting"
    t.boolean  "graph"
    t.boolean  "slope"
    t.string   "upper_bound"
    t.string   "lower_bound"
    t.string   "specialized"
    t.text     "short_description"
    t.text     "the_question"
    t.text     "answer"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "description"
    t.text     "courses"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "worksheet_comments", force: :cascade do |t|
    t.string   "author"
    t.integer  "worksheet_id"
    t.text     "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "worksheets", force: :cascade do |t|
    t.string   "author"
    t.text     "description"
    t.string   "worksheet_name"
    t.integer  "suggested_grade"
    t.boolean  "arithmetic"
    t.boolean  "addition"
    t.boolean  "subtraction"
    t.boolean  "multiplication"
    t.boolean  "division"
    t.boolean  "long_division"
    t.boolean  "reading"
    t.boolean  "trick_question"
    t.boolean  "multiple_choices"
    t.string   "multiple_choice_answer"
    t.boolean  "word_problem"
    t.text     "word_problem_solution_equation"
    t.boolean  "integer"
    t.boolean  "decimal"
    t.integer  "number_of_decimals"
    t.boolean  "fraction"
    t.boolean  "fraction_to_decimal"
    t.boolean  "decimal_to_fraction"
    t.integer  "significant_digits"
    t.boolean  "scientific_notation"
    t.boolean  "parenthesis"
    t.boolean  "exponent"
    t.boolean  "roots"
    t.boolean  "square_root"
    t.boolean  "cube_root"
    t.boolean  "factoring"
    t.boolean  "foil"
    t.boolean  "variables"
    t.integer  "number_of_variables"
    t.boolean  "imaginary_number"
    t.boolean  "degree"
    t.boolean  "radian"
    t.boolean  "trigonometry"
    t.boolean  "sin"
    t.boolean  "cos"
    t.boolean  "tan"
    t.boolean  "csc"
    t.boolean  "sec"
    t.boolean  "cot"
    t.boolean  "arcsin"
    t.boolean  "arccos"
    t.boolean  "arctan"
    t.boolean  "arccsc"
    t.boolean  "arcsec"
    t.boolean  "arccot"
    t.boolean  "simple_shapes_area"
    t.boolean  "simple_shapes_circumference"
    t.boolean  "simple_shapes_volume"
    t.boolean  "combination_shapes_area"
    t.boolean  "combination_shapes_circumference"
    t.boolean  "combination_shapes_volume"
    t.boolean  "ratios"
    t.boolean  "functions"
    t.boolean  "equation"
    t.boolean  "inequality"
    t.boolean  "plotting"
    t.boolean  "graph"
    t.boolean  "slope"
    t.string   "upper_bound"
    t.string   "lower_bound"
    t.text     "questions"
    t.text     "answers"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "worksheets", ["worksheet_name"], name: "index_worksheets_on_worksheet_name", unique: true

end
