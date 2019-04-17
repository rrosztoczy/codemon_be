# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Monsters
rubia = Monster.create(name: "Rubia", phrase: "I'm a new developers best friend!...", image: "https://i.imgur.com/QRupg1A.png")
noSQL = Monster.create(name: "NoSQL", phrase: "WITH RECURSIVE q(r, i, rx, ix, g) AS (
    SELECT r::DOUBLE PRECISION * 0.02, i::DOUBLE PRECISION * 0.02,
          .0::DOUBLE PRECISION      , .0::DOUBLE PRECISION, 0
    FROM generate_series(-60, 20) r, generate_series(-50, 50) i
    UNION ALL...)", image: "https://i.imgur.com/suYotx3.png")
elixin = Monster.create(name: "Elixin", phrase: "I'm so fast and strong, catch me if you can!...", image: "https://i.imgur.com/1eQqkmx.png")
piethon = Monster.create(name: "Piethon", phrase: "Let's have pun with data!", image: "https://i.imgur.com/Extrqk7.png")
javahscrypt = Monster.create(name: "Javahscrypt", phrase: "Jaaaaaaaaavvahscrypt", image: "https://i.imgur.com/6qrQ36c.png")
rustico = Monster.create(name: "Rustico", phrase: "?", image: "https://i.imgur.com/t2m38nW.png")

# Questions
# Schema for new:
# t.string "question_text"
# t.integer "difficulty"
# t.bigint "monster_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.index ["monster_id"], name: "index_questions_on_monster_id"
# Rubia
rubyeasy = Question.create(question_text: "Can you dodge my array of fireballs? fireballArray = ['fireball', 'fireball','fireball']", difficulty: 1, monster_id: rubia.id)
jseasy = Question.create(question_text: "I'm an dom element! How do you select me by id?", difficulty: 1, monster_id: javahscrypt.id)
rusticoeasy = Question.create(question_text: "Find my recursive macro! Muahahaha.", difficulty: 1, monster_id: rustico.id)
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
rubyeasya = Answer.create(answer_text: "fireballArray.map()", letter: "A", correct: false, question_id: rubyeasy.id)
rubyeasyb = Answer.create(answer_text: "fireballArray.each do |fireball| def dodgeFireball(fireball) end end", letter: "B", correct: false, question_id: rubyeasy.id)
rubyeasyc = Answer.create(answer_text: "fireballArray.each { |fireball| dodgeFireball(fireball) }", letter: "C", correct: true, question_id: rubyeasy.id)
rubyeasyd = Answer.create(answer_text: "fireballArray.forEach()", letter: "D", correct: false, question_id: rubyeasy.id)
jseasya = Answer.create(answer_text: "let caughtJavahscrypt = document.getElementByName('javahscrypt');", letter: "A", correct: false, question_id: jseasy.id)
jseasyb = Answer.create(answer_text: "let caughtJavahscrypt = document.getElementById('#javahscrypt');", letter: "B", correct: false, question_id: jseasy.id)
jseasyc = Answer.create(answer_text: "let caughtJavahscrypt = document.querySelector('.javahscrypt');", letter: "C", correct: false, question_id: jseasy.id)
jseasyd = Answer.create(answer_text: "let caughtJavahscrypt = document.querySelector('#javahscrypt');", letter: "D", correct: true, question_id: jseasy.id)
rusticoeasya = Answer.create(answer_text: "macro_rules! sum {($base:expr) => { $base }; ($a:expr, $($rest:expr),+) => { $a + sum!($($rest),+) };}", letter: "A", correct: true, question_id: rusticoeasy.id)
rusticoeasyb = Answer.create(answer_text: "recursive_function sum {($base) => { $base };(expr, $(expr),+) => { $a + sum!($($rest),+) };}", letter: "B", correct: false, question_id: rusticoeasy.id)
rusticoeasyc = Answer.create(answer_text: "pub fn push(&mut self, value: T) {if self.len == self.buf.cap() {self.buf.double();}", letter: "C", correct: false, question_id: rusticoeasy.id)
rusticoeasyd = Answer.create(answer_text: "function push(self, T) {if self.len == self.buf.cap() {self(push(self))}", letter: "D", correct: false, question_id: rusticoeasy.id)







#noSQL
noSQLeasy = Question.create(question_text: "With SQL, how do you select all the records from a table named 'Persons' where the 'LastName' is alphabetically between (and including) 'Hansen' and 'Pettersen'?", difficulty: 1, monster_id: noSQL.id)

noSQLeasya = Answer.create(answer_text: "SELECT * FROM Persons WHERE LastName BETWEEN 'Hansen' AND 'Pettersen'", letter: "A", correct: true, question_id: noSQLeasy.id)

noSQLeasyb = Answer.create(answer_text: "SELECT * FROM Persons WHERE LastName>'Hansen' AND LastName<'Pettersen'", letter: "B", correct: false, question_id: noSQLeasy.id)

noSQLeasyc = Answer.create(answer_text: "SELECT * LastName>'Hansen' AND LastName<'Pettersen' FROM Persons", letter: "C", correct: false, question_id: noSQLeasy.id)

noSQLeasyd = Answer.create(answer_text: "I Don't Know but I'd choose me!", letter: "D", correct: false, question_id: noSQLeasy.id)



#######Python
pythoneasy = Question.create(question_text: "Woah! What's a TUPLE?", difficulty: 1, monster_id: piethon.id)

pythoneasya = Answer.create(answer_text: "{'name':'apple', 'color':green}", letter: "A", correct: false, question_id: pythoneasy.id)

pythoneasyb = Answer.create(answer_text: "('apple', 'banana', 'cherry')", letter: "B", correct: true, question_id: pythoneasy.id)

pythoneasyc = Answer.create(answer_text: "{'apple', 'banana', 'cherry'}", letter: "C", correct: false, question_id: pythoneasy.id)

pythoneasyd = Answer.create(answer_text: "['apple', 'banana', 'cherry']", letter: "D", correct: true, question_id: pythoneasy.id)



####Elixir
elixireasy = Question.create(question_text: "'war'.toUpperCase().split('').reverse().join('');.....
Woah i don't speak javascript! Can you translate for me? ", difficulty: 1, monster_id: elixin.id)

elixireasya = Answer.create(answer_text: "'war' |> String.upcase |> String.split('') |> Enum.reverse |> Enum.join('')", letter: "A", correct: true, question_id: elixireasy.id)


elixireasyb = Answer.create(answer_text: "'war'.upcase.split.reverse.join('')", letter: "B", correct: false, question_id: elixireasy.id)

elixireasyc = Answer.create(answer_text: "'war'.toUpperCase().split('').reverse().join('');", letter: "C", correct: false, question_id: elixireasy.id)

elixireasyd = Answer.create(answer_text: "'war'.toUpperCase.split.reverse.join;", letter: "D", correct: false, question_id: elixireasy.id)
