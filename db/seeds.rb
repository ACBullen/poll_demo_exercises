# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create(user_name: "Mark")
user2 = User.create(user_name: "Alex")
user3 = User.create(user_name: "Horatio")

poll1 = Poll.create(title: 'Wakefield County Schoolboard', author_id: user2.id)
poll2 = Poll.create(title: 'a/A opinions research', author_id: user1.id)
poll3 = Poll.create(title: 'Puerell usage habits', author_id: user3.id)

q1 = Question.create(text: 'Who should hold the superintendent position?', poll_id: poll1.id)
q2 = Question.create(text: 'Who should hold the lunchlady position?', poll_id: poll1.id)
q3 = Question.create(text: 'Who should hold the principle position?', poll_id: poll1.id)

q4 = Question.create(text: 'How much homework should we have on weekends?', poll_id: poll2.id)
q5 = Question.create(text: 'Do the socials meet your expectations?', poll_id: poll2.id)
q6 = Question.create(text: 'Are you a software developer?', poll_id: poll2.id)


q7 = Question.create(text: 'IS EVERYTHING GERMY AROUND YOU?', poll_id: poll3.id)
q8 = Question.create(text: 'IS YOUR SKIN TOO WEAK FOR OUR CLEASNING POWER?', poll_id: poll3.id)
q9 = Question.create(text: 'WHAT IS YOUR FAVORITE FLAVOR?', poll_id: poll3.id)

q1ac1 = AnswerChoice.create(text: "Me.", question_id: q1.id)
q1ac2 = AnswerChoice.create(text: "ugh, steve carlsburg...", question_id: q1.id)

q2ac1 = AnswerChoice.create(text: "Also me.", question_id: q2.id)
q2ac2 = AnswerChoice.create(text: "Gwen Stacy", question_id: q2.id)

q3ac1 = AnswerChoice.create(text: 'Still me', question_id: q3.id )
q3ac2 = AnswerChoice.create(text: 'Not me (secretly me)', question_id: q3.id )


q4ac1 = AnswerChoice.create(text: 'None!', question_id: q4.id )
q4ac2 = AnswerChoice.create(text: 'ALL OF IT!!', question_id: q4.id )

q5ac1 = AnswerChoice.create(text: 'Totes', question_id: q5.id )
q5ac2 = AnswerChoice.create(text: 'Nah', question_id: q5.id )


q6ac1 = AnswerChoice.create(text: 'Yes!', question_id: q6.id )
q6ac2 = AnswerChoice.create(text: 'Jeff certainly thinks so', question_id: q6.id )

q7ac1 = AnswerChoice.create(text: 'YES', question_id: q7.id )
q7ac2 = AnswerChoice.create(text: 'I CAN FEEL THEM CRAWLING AROUND!', question_id: q7.id )

q8ac1 = AnswerChoice.create(text: 'YES, BUT I WILL BECOME STRONGER', question_id: q8.id )
q8ac2 = AnswerChoice.create(text: 'NO, I BATHE IN IT', question_id: q8.id )


q9ac1 = AnswerChoice.create(text: 'Orginal', question_id: q9.id )
q9ac2 = AnswerChoice.create(text: 'Extra burning', question_id: q9.id )

q10r = Response.create(user_id: user3.id, answer_choice_id: q1ac1.id )
q1r = Response.create(user_id: user3.id, answer_choice_id: q1ac1.id )
q2r = Response.create(user_id: user3.id, answer_choice_id: q2ac1.id )
q3r = Response.create(user_id: user3.id, answer_choice_id: q3ac1.id )
q4r = Response.create(user_id: user3.id, answer_choice_id: q4ac1.id )
q5r = Response.create(user_id: user3.id, answer_choice_id: q5ac1.id )
q6r = Response.create(user_id: user3.id, answer_choice_id: q6ac1.id )
q7r = Response.create(user_id: user3.id, answer_choice_id: q7ac1.id )
q8r = Response.create(user_id: user3.id, answer_choice_id: q8ac1.id )
q9r = Response.create(user_id: user3.id, answer_choice_id: q9ac1.id )
