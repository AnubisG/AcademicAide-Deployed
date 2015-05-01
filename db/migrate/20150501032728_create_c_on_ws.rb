class CreateCOnWs < ActiveRecord::Migration
  def change
    create_table :c_on_ws do |t|
      t.integer :worksheet_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
