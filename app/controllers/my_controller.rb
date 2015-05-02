class MyController < ApplicationController
  def questions
   @questions = Question.where(author: current_user.username)
  end

  def worksheets
    @worksheets = Worksheets.all
  end

  def curriculums
    @questions = Question.all
  end
end