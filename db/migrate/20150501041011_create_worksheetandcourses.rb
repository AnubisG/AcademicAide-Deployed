class CreateWorksheetandcourses < ActiveRecord::Migration
  def change
    create_table :worksheetandcourses do |t|
      t.integer :worksheet_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
