post '/rounds/:id/decisions' do
  current_round= Round.find_by(id:params[:id])
  current_round.decisions.create(question_id:params[:question_id],decision:params[:answer])
  new_q = current_round.get_unanswered_q.first
  @new_surveys = Survey.all

  if !new_q.nil?
    redirect "/rounds/#{params[:id]}/questions/#{new_q.id}"
  else
    erb :"/surveys/index", layout: false
  end
end
