class QuestionsController < ApplicationController
  def index
    @question = Question.new
	@questions= Question.unsolved(params)
  end
  
  def create
   
    @question = current_user.questions.build(params[:question])
	
	if @question.save
	  
	  flash[:success]= "Your question has been posted"
	  redirect_to @question
	  
	else
	  @questions = Question.unsolved(params)
	  render 'index'
	
	end
  end
	def show
	  
	   @question = Question.find(params[:id])
	   @answer = Answer.new
	
	end
	
	def your_questions
	  @questions = current_user.your_questions(params)
	end
	
	def search
	 @questions = Question.search(params)
	end
	
	
end	
	
	
  
  

