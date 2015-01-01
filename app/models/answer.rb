class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  attr_accessible :body
  
  validates :body, presence:true, length:{in: 4..10}
end
