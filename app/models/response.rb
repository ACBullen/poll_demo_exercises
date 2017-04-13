require 'byebug'
class Response < ApplicationRecord
  validates :user_id, presence: true
  validate :not_duplicate_response
  validate :author_cant_respond_to_self

  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def author_cant_respond_to_self
    # debugger
    if self.question.poll.author_id == self.user_id
      errors[:user_id] << "You can't respond to your own polls (sorry, Horatio)"
    end
  end

  def not_duplicate_response
    # debugger
    if self.sibling_responses.exists?(user_id: self.user_id)
      errors[:user_id] << "You already responded"
    end
  end




  has_one :question,
    through: :answer_choice,
    source: :question

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
