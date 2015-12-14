jay = User.new(username: "jay")
jay.password = "jayjayjay"
jay.password_confirmation = "jayjayjay"
jay.save
jay = User.find_by(username: "jay")

js = Survey.create(user_id: jay.id, name: "random questions")
js = Survey.find_by(user_id: jay.id)
jq = Question.create(question: "What is your favorite color", survey_id: js.id)
jc = Choice.create(question_id: jq.id, a: "purple", b: "black", c: "magenta", d: "red")

jq2 = Question.create(question: "What is your favorite number", survey_id: js.id)
jc2 = Choice.create(question_id: jq2.id, a: "27", b: "6", c: "2", d: "1")

jq3 = Question.create(question: "Who is your favorite super hero", survey_id: js.id)
jc3 = Choice.create(question_id: jq3.id, a: "superman", b: "superwoman", c: "batman", d: "robin")

jq4 = Question.create(question: "What's your favorite movie", survey_id: js.id)
jc4 = Choice.create(question_id: jq4.id, a: "The Terminator", b: "Aliens", c: "Legally Blonde", d: "Mean Girls")


# ///////////////////////////////////
ryan = User.new(username: "ryan")
ryan.password = "ryanryan"
ryan.password_confirmation = "ryanryan"
ryan.save
ryan = User.find_by(username: "ryan")

rs = Survey.create(user_id: ryan.id, name: "favorite things")
rs = Survey.find_by(user_id: ryan.id)
rq = Question.create(question: "What is your favorite collegiate sports team", survey_id: rs.id)
rc = Choice.create(question_id: rq.id, a: "Michigan State", c: "Michigan", d: "Ohio State", b: "Notre Dame")

rq2 = Question.create(question: "What is your favorite thing to do", survey_id: rs.id)
rc2 = Choice.create(question_id: rq2.id, a: "go to the gym", c: "long walks on the beach", d: "watch dj khaled say 'another one'", b: "watch spongebob")

# ///////////////////////////////////
eric = User.new(username: "eric")
eric.password = "ericeric"
eric.password_confirmation = "ericeric"
eric.save
eric = User.find_by(username: "eric")

es = Survey.create(user_id: eric.id, name: "period dramas")
es = Survey.find_by(user_id: eric.id)
eq = Question.create(question: "What is your favorite period drama", survey_id: es.id)
ec = Choice.create(question_id: eq.id, a: "Downton Abbey", b: "The Young Victoria", c: "A Room with a View", d: "Elizabeth")
