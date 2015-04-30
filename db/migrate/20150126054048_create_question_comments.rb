class CreateQuestionComments < ActiveRecord::Migration
  def change
    create_table :question_comments do |t|
      t.string :author
      t.integer :question_id
      t.text :text

      t.timestamps null: false
    end
  end
end
