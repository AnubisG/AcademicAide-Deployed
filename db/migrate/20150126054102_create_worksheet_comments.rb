class CreateWorksheetComments < ActiveRecord::Migration
  def change
    create_table :worksheet_comments do |t|
      t.string :author
      t.integer :worksheet_id
      t.text :text

      t.timestamps null: false
    end
  end
end
