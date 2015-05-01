class CreateCUnCos < ActiveRecord::Migration
  def change
    create_table :c_un_cos do |t|
      t.integer :course_id
      t.integer :curriculum_id

      t.timestamps null: false
    end
  end
end
