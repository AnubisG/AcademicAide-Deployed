class MyController < ApplicationController
  def questions
   @questions = Question.where(author: current_user.username).paginate(:per_page => 5, :page => params[:page])
  end

  def worksheets
    @worksheets = Worksheets.where(author: current_user.username).paginate(:per_page => 5, :page => params[:page])
  end
  
  def courses
    @courses = Courses.where(author: current_user.username).paginate(:per_page => 5, :page => params[:page])
  end
  
  def curriculums
    @curriculums = Curriculums.where(author: current_user.username).paginate(:per_page => 5, :page => params[:page])
  end
end