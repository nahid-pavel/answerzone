module QuestionsHelper
 def current_user

  current_user ||= User.find(session[:user_id]) if session[:user_id]

end

def on_your_action_page?
  
   action_name == 'your_questions'
 
end

end
