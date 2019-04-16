# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Monsters
rubia = Monster.create(name: "Rubia", phrase: "I'm a new developers best friend!...", image: "https://imgur.com/QRupg1A")
noSQL = Monster.create(name: "NoSQL", phrase: "WITH RECURSIVE q(r, i, rx, ix, g) AS (
    SELECT r::DOUBLE PRECISION * 0.02, i::DOUBLE PRECISION * 0.02, 
          .0::DOUBLE PRECISION      , .0::DOUBLE PRECISION, 0
    FROM generate_series(-60, 20) r, generate_series(-50, 50) i
    UNION ALL...", image: "https://imgur.com/suYotx3")
elixin = Monster.create(name: "Elixin", phrase: "I'm so fast and strong, catch me if you can!...", image: "https://imgur.com/1eQqkmx")
piethon = Monster.create(name: "Piethon", phrase: "Let's have pun with data!", image: "https://imgur.com/Extrqk7")
javahscrypt = Monster.create(name: "Javahscrypt", phrase: "Jaaaaaaaaavvahscrypt", image: "https://imgur.com/6qrQ36c")
rustico = Monster.create(name: "Rustico", phrase: "?", image: "https://imgur.com/t2m38nW")

# Questions
# Schema for new:
# t.string "question_text"
# t.integer "difficulty"
# t.bigint "monster_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.index ["monster_id"], name: "index_questions_on_monster_id"
# Rubia
rubyeasy = Question.create(question_text: "Which of these methods is mine?", difficulty: 1, monster_id: rubia.id)
# rubymediun = Question.create(question_text: "How", difficulty: 1, monster_id: 1)
# rubyhard = Question.create(question_text: "How", difficulty: 1, monster_id: 1)


# Answers
# Schema for new:
# t.string "answer_text"
# t.string "letter"
# t.boolean "correct"
# t.bigint "question_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.index ["question_id"], name: "index_answers_on_question_id"
rubyeasya = Answer.create(answer_text: "Array.prototype.forEach()", letter: "A", correct: false, question_id: rubyeasy.id)
rubyeasyb = Answer.create(answer_text: "Array.prototype.forEach()", letter: "B", correct: false, question_id: rubyeasy.id)
rubyeasyc = Answer.create(answer_text: "Fireballs.each { |Fireball| puts `Spits fireball` }", letter: "C", correct: true, question_id: rubyeasy.id)
rubyeasyd = Answer.create(answer_text: "Array.prototype.forEach()", letter: "D", correct: false, question_id: rubyeasy.id)









