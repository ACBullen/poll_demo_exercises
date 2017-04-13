class Question < ApplicationRecord

  def results
    answers = self.answer_choices
    result = {}
    answers.each do |answer|
      result[answer.text] = answer.responses.count
    end
    result
  end

  def results_v2point0
    result = {}
    answers = self.answer_choices.includes(:responses)
    answers.each do |ans|
      result[ans.text] = ans.responses.length
    end
    result
  end
  (<<-SQL, self.id
    SELECT
      answer_choices.*, COUNT(responses.*)
    FROM
      answer_choices
    JOIN
      responses ON responses.answer_choice_id = answer_choices.id
    JOIN
      questions ON answer_choices.question_id = questions.id
    GROUP BY
      answer_choices.id
    WHERE
      questions.id = ?
  SQL

  has_many :responses,
    through: :answer_choices,
    source: :responses

  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll
end
