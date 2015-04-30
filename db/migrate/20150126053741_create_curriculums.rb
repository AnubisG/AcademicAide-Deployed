class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :author
      t.text :course_description
      t.text :syllabus
      t.text :worksheets

      t.timestamps null: false
    end
  end
end
