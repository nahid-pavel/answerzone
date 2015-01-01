class AnswersController < ApplicationController

def create
  @question = Question.find(params[:question_id])
  @answer = @question.answers.build(params[:answer])
  @answer.user =current_user
  
   if @answer.save 
     
	 flash[:success] = "You answered the question"
	 
	 redirect_to @question
	 
  else  
    
	  flash[:success] = "No Answer"
  
   end 
  


end


end
