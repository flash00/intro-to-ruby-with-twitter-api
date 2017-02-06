require_relative "../models/twitter_adapter"

get '/tweets/search' do
  erb :"/tweets/search.html"
end

post '/tweets/search' do
  p params
  TwitterAdapter::search(params[:search])
  erb :"/tweets/results.html"
end

get '/tweets/results' do

end