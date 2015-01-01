class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  attr_accessible :username, :password, :password_confirmation
  
  validates :username, presence: true, uniqueness: {case_sensitive:false}
  validates :password, presence: true, length: {in: 5..10,message: 'Too Short. It should be at least 5 characters long' }
  validates :password_confirmation, length: {in: 5..10,message: 'Too Short. It should be at least 5 characters long' }
  
  
  has_secure_password
  
  def your_questions(params)
		questions.paginate(page: params[:page], order: 'created_at DESC', per_page: 3)
	end

end
