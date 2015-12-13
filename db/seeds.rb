jay = User.new(username: "jay")
jay.password = "jayjayjay"
jay.password_confirmation = "jayjayjay"
jay.save
jay = User.find_by(username: "jay")

js = Survey.create(user_id: jay.id, name: "jsurvey")
js = Survey.find_by(user_id: jay.id)
jq = Question.create(question: "What is your favorite color", survey_id: js.id)
jc = Choice.create(question_id: jq.id, a: "purple", b: "black", c: "magenta", d: "red")

jq2 = Question.create(question: "What is your favorite number", survey_id: js.id)
jc2 = Choice.create(question_id: jq2.id, a: "27", b: "6", c: "2", d: "1")

jq3 = Question.create(question: "Who is your favorite super hero", survey_id: js.id)
jc3 = Choice.create(question_id: jq3.id, a: "superman", b: "superwoman", c: "batman", d: "robin")

# jq.decisions.create(decision: "a", round_id: jr.id)
