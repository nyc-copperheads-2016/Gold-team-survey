post '/rounds/:id/decisions' do
  current_round= Round.find_by(id:params[:id])
  current_round.decisions.create(question_id:params[:question_id],decision:params[:answer])
  new_q_id = current_round.get_unanswered_q.first
  if !new_q_id.nil?
    redirect "/rounds/#{params[:id]}/questions/#{new_q_id.id}"
  else
    redirect "/surveys"
  end
end
