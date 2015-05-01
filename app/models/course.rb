class Course < ActiveRecord::Base
  has_many :course_comments
  has_and_belongs_to_many :worksheets
  has_and_belongs_to_many :curriculums
end
