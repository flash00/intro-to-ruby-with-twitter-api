require_relative "../models/twitter_adapter"

get '/tweets/search' do
  erb :"/tweets/search.html"
end

post '/tweets/search' do
  @search_string   = params[:search]
  @results         = TwitterAdapter::search(@search_string)
  @result_set_size = @results.count
  erb :"/tweets/results.html"
end