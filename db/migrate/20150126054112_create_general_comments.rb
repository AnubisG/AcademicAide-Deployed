class CreateGeneralComments < ActiveRecord::Migration
  def change
    create_table :general_comments do |t|
      t.string :author
      t.integer :comment_id
      t.text :text

      t.timestamps null: false
    end
  end
end
