class CreateCourseandcurriculums < ActiveRecord::Migration
  def change
    create_table :courseandcurriculums do |t|
      t.integer :course_id
      t.integer :curriculum_id

      t.timestamps null: false
    end
  end
end
