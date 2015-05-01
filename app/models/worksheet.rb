class Worksheet < ActiveRecord::Base
  has_many :worksheet_comments
  has_and_belongs_to_many :questions
  has_and_belongs_to_many :courses
end
