post '/rounds/new' do
  current_survey = Survey.find_by(id: params[:survey_id])
  current_round = current_survey.rounds.create(user_id: current_user.id)

  new_q = current_round.survey.questions.first
  redirect "/rounds/#{current_round.id}/questions/#{new_q.id}"
end
