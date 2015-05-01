class CreateQuesetionandworksheets < ActiveRecord::Migration
  def change
    create_table :quesetionandworksheets do |t|
      t.integer :question_id
      t.integer :worksheet_id

      t.timestamps null: false
    end
  end
end
