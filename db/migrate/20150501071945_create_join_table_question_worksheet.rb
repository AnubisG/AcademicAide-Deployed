class CreateJoinTableQuestionWorksheet < ActiveRecord::Migration
  def change
    create_join_table :questions, :worksheets do |t|
      t.index [:question_id, :worksheet_id]
      t.index [:worksheet_id, :question_id]
    end
  end
end
