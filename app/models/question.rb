class Question < ActiveRecord::Base
  has_many :question_comments
  has_and_belongs_to_many :worksheets
end
