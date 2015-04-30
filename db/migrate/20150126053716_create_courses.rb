class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :class_id
      t.string :teacher
      t.text :students
      t.string :course_name
      t.text :class_description
      t.string :corresponding_course

      t.timestamps null: false
    end
  end
end
