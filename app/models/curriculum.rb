class Curriculum < ActiveRecord::Base
  has_many :general_comments
  has_and_belongs_to_many :curriculums
end
