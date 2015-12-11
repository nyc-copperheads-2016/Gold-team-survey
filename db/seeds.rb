jay = User.new(username: "jay")
jay.password = "jayjayjay"
#jay.password_confirmation = "jayjayjay"
jay.save

js = Survey.create(user_id: jay.id, name: "jsurvey")
jq = Question.create(question: "What is your favorite color", survey_id: jq.id)
jc = Choice.create(question_id: jq.id, a: "purple", b: "black", c: "magenta", d: "red")
