class MyController < ApplicationController
  def questions
   @questions = Question.all
  end

  def worksheets
    @questions = Question.all
  end

  def curriculums
    @questions = Question.all
  end
end