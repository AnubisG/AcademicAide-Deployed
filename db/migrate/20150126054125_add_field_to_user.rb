class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job_title, :string
    add_column :users, :description, :string
    add_column :users, :courses, :text
    add_column :users, :current_worksheet_id, :integer
    add_column :users, :current_course_id, :integer
    add_column :users, :current_curriculum_id, :integer
  end
end
