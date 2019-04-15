class Api::V1::MonsterSerializer < ActiveModel::Serializer
  attributes :name, :phrase, :questions, :answers

  def questions 
    self.object.questions.map do |question|
      {question_text: question.question_text, 
       difficulty: question.difficulty}
    end 
  end 

  def answers 
    self.object.answers.map do |answer|
      {letter: answer.letter, 
        answer_text: answer.answer_text, 
       correct: answer.correct}
    end 
  end 

end
