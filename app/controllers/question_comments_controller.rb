class QuestionCommentsController < ApplicationController
  def create
    #@question =  Question.find(params[:question_id])
   
    @question =  Question.find(params.require(:question_id))
    
    #@question_comment = @question.question_comments.create(params.require(:question_comment))
    @question_comment = @question.question_comments.new(question_comments_params)
    
    @question_comment.save
    
    redirect_to @question
  end

  def destroy
    @question_comment.destory
  end
  
  private
  def question_comments_params
    params.require(:question_comment).permit!
  end
  
end