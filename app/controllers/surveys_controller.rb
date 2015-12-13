get '/surveys' do
  @new_surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys' do
  new_survey = current_user.surveys.new(name: params[:name], creator: current_user)
  if new_survey.save
    redirect "/surveys/#{new_survey.id}/questions/new"
  else
    erb :'/surveys/new'
  end
end

#Do the show after you're done with questions/choices
# get '/surveys/:id' do
#   @survey = Survey.find(params[:id])
#   erb :'surveys/show'
# end
