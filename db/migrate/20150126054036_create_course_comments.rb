class CreateCourseComments < ActiveRecord::Migration
  def change
    create_table :course_comments do |t|
      t.string :author
      t.integer :course_id
      t.text :text

      t.timestamps null: false
    end
  end
end
