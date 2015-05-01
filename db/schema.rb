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

ActiveRecord::Schema.define(version: 20150501032757) do

  create_table "c_on_ws", force: :cascade do |t|
    t.integer  "worksheet_id", limit: 4
    t.integer  "course_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "c_un_cos", force: :cascade do |t|
    t.integer  "course_id",     limit: 4
    t.integer  "curriculum_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "course_comments", force: :cascade do |t|
    t.string   "author",     limit: 255
    t.integer  "course_id",  limit: 4
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "class_id",             limit: 255
    t.string   "teacher",              limit: 255
    t.text     "students",             limit: 65535
    t.string   "course_name",          limit: 255
    t.text     "class_description",    limit: 65535
    t.string   "corresponding_course", limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.string   "author",             limit: 255
    t.text     "course_description", limit: 65535
    t.text     "syllabus",           limit: 65535
    t.text     "worksheets",         limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "general_comments", force: :cascade do |t|
    t.string   "author",     limit: 255
    t.integer  "comment_id", limit: 4
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "hw_records", force: :cascade do |t|
    t.string   "worksheet",       limit: 255
    t.text     "questions",       limit: 65535
    t.text     "student_answers", limit: 65535
    t.string   "students_name",   limit: 255
    t.string   "completeness",    limit: 255
    t.string   "grade",           limit: 255
    t.text     "grader_comments", limit: 65535
    t.string   "class_id",        limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "qn_ws", force: :cascade do |t|
    t.integer  "question_id",  limit: 4
    t.integer  "worksheet_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "question_comments", force: :cascade do |t|
    t.string   "author",      limit: 255
    t.integer  "question_id", limit: 4
    t.text     "text",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "author",                           limit: 255
    t.integer  "suggested_grade",                  limit: 4
    t.boolean  "arithmetic",                       limit: 1
    t.boolean  "addition",                         limit: 1
    t.boolean  "subtraction",                      limit: 1
    t.boolean  "multiplication",                   limit: 1
    t.boolean  "division",                         limit: 1
    t.boolean  "long_division",                    limit: 1
    t.boolean  "reading",                          limit: 1
    t.boolean  "trick_question",                   limit: 1
    t.boolean  "multiple_choices",                 limit: 1
    t.string   "multiple_choice_answer",           limit: 255
    t.boolean  "word_problem",                     limit: 1
    t.text     "word_problem_solution_equation",   limit: 65535
    t.boolean  "integer",                          limit: 1
    t.boolean  "decimal",                          limit: 1
    t.integer  "number_of_decimals",               limit: 4
    t.boolean  "fraction",                         limit: 1
    t.boolean  "fraction_to_decimal",              limit: 1
    t.boolean  "decimal_to_fraction",              limit: 1
    t.integer  "significant_digits",               limit: 4
    t.boolean  "scientific_notation",              limit: 1
    t.boolean  "parenthesis",                      limit: 1
    t.boolean  "exponent",                         limit: 1
    t.boolean  "roots",                            limit: 1
    t.boolean  "square_root",                      limit: 1
    t.boolean  "cube_root",                        limit: 1
    t.boolean  "factoring",                        limit: 1
    t.boolean  "foil",                             limit: 1
    t.boolean  "variables",                        limit: 1
    t.integer  "number_of_variables",              limit: 4
    t.boolean  "imaginary_number",                 limit: 1
    t.boolean  "degree",                           limit: 1
    t.boolean  "radian",                           limit: 1
    t.boolean  "trigonometry",                     limit: 1
    t.boolean  "sin",                              limit: 1
    t.boolean  "cos",                              limit: 1
    t.boolean  "tan",                              limit: 1
    t.boolean  "csc",                              limit: 1
    t.boolean  "sec",                              limit: 1
    t.boolean  "cot",                              limit: 1
    t.boolean  "arcsin",                           limit: 1
    t.boolean  "arccos",                           limit: 1
    t.boolean  "arctan",                           limit: 1
    t.boolean  "arccsc",                           limit: 1
    t.boolean  "arcsec",                           limit: 1
    t.boolean  "arccot",                           limit: 1
    t.boolean  "simple_shapes_area",               limit: 1
    t.boolean  "simple_shapes_circumference",      limit: 1
    t.boolean  "simple_shapes_volume",             limit: 1
    t.boolean  "combination_shapes_area",          limit: 1
    t.boolean  "combination_shapes_circumference", limit: 1
    t.boolean  "combination_shapes_volume",        limit: 1
    t.boolean  "ratios",                           limit: 1
    t.boolean  "functions",                        limit: 1
    t.boolean  "equation",                         limit: 1
    t.boolean  "inequality",                       limit: 1
    t.boolean  "plotting",                         limit: 1
    t.boolean  "graph",                            limit: 1
    t.boolean  "slope",                            limit: 1
    t.string   "upper_bound",                      limit: 255
    t.string   "lower_bound",                      limit: 255
    t.string   "specialized",                      limit: 255
    t.text     "short_description",                limit: 65535
    t.text     "the_question",                     limit: 65535
    t.text     "answer",                           limit: 65535
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "job_title",              limit: 255
    t.string   "description",            limit: 255
    t.text     "courses",                limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "worksheet_comments", force: :cascade do |t|
    t.string   "author",       limit: 255
    t.integer  "worksheet_id", limit: 4
    t.text     "text",         limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "worksheets", force: :cascade do |t|
    t.string   "author",                           limit: 255
    t.text     "description",                      limit: 65535
    t.string   "worksheet_name",                   limit: 255
    t.integer  "suggested_grade",                  limit: 4
    t.boolean  "arithmetic",                       limit: 1
    t.boolean  "addition",                         limit: 1
    t.boolean  "subtraction",                      limit: 1
    t.boolean  "multiplication",                   limit: 1
    t.boolean  "division",                         limit: 1
    t.boolean  "long_division",                    limit: 1
    t.boolean  "reading",                          limit: 1
    t.boolean  "trick_question",                   limit: 1
    t.boolean  "multiple_choices",                 limit: 1
    t.string   "multiple_choice_answer",           limit: 255
    t.boolean  "word_problem",                     limit: 1
    t.text     "word_problem_solution_equation",   limit: 65535
    t.boolean  "integer",                          limit: 1
    t.boolean  "decimal",                          limit: 1
    t.integer  "number_of_decimals",               limit: 4
    t.boolean  "fraction",                         limit: 1
    t.boolean  "fraction_to_decimal",              limit: 1
    t.boolean  "decimal_to_fraction",              limit: 1
    t.integer  "significant_digits",               limit: 4
    t.boolean  "scientific_notation",              limit: 1
    t.boolean  "parenthesis",                      limit: 1
    t.boolean  "exponent",                         limit: 1
    t.boolean  "roots",                            limit: 1
    t.boolean  "square_root",                      limit: 1
    t.boolean  "cube_root",                        limit: 1
    t.boolean  "factoring",                        limit: 1
    t.boolean  "foil",                             limit: 1
    t.boolean  "variables",                        limit: 1
    t.integer  "number_of_variables",              limit: 4
    t.boolean  "imaginary_number",                 limit: 1
    t.boolean  "degree",                           limit: 1
    t.boolean  "radian",                           limit: 1
    t.boolean  "trigonometry",                     limit: 1
    t.boolean  "sin",                              limit: 1
    t.boolean  "cos",                              limit: 1
    t.boolean  "tan",                              limit: 1
    t.boolean  "csc",                              limit: 1
    t.boolean  "sec",                              limit: 1
    t.boolean  "cot",                              limit: 1
    t.boolean  "arcsin",                           limit: 1
    t.boolean  "arccos",                           limit: 1
    t.boolean  "arctan",                           limit: 1
    t.boolean  "arccsc",                           limit: 1
    t.boolean  "arcsec",                           limit: 1
    t.boolean  "arccot",                           limit: 1
    t.boolean  "simple_shapes_area",               limit: 1
    t.boolean  "simple_shapes_circumference",      limit: 1
    t.boolean  "simple_shapes_volume",             limit: 1
    t.boolean  "combination_shapes_area",          limit: 1
    t.boolean  "combination_shapes_circumference", limit: 1
    t.boolean  "combination_shapes_volume",        limit: 1
    t.boolean  "ratios",                           limit: 1
    t.boolean  "functions",                        limit: 1
    t.boolean  "equation",                         limit: 1
    t.boolean  "inequality",                       limit: 1
    t.boolean  "plotting",                         limit: 1
    t.boolean  "graph",                            limit: 1
    t.boolean  "slope",                            limit: 1
    t.string   "upper_bound",                      limit: 255
    t.string   "lower_bound",                      limit: 255
    t.text     "questions",                        limit: 65535
    t.text     "answers",                          limit: 65535
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "worksheets", ["worksheet_name"], name: "index_worksheets_on_worksheet_name", unique: true, using: :btree

end
