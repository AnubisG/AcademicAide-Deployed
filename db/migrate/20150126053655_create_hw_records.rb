class CreateHwRecords < ActiveRecord::Migration
  def change
    create_table :hw_records do |t|
      t.string :worksheet
      t.text :questions
      t.text :student_answers
      t.string :students_name
      t.string :completeness
      t.string :grade
      t.text :grader_comments
      t.string :class_id

      t.timestamps null: false
    end
  end
end
