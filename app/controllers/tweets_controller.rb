get '/tweets/search' do
  erb :"/tweets/search.html"
end

post '/tweets/search' do
  @search_string   = params[:search]
  @results         = TwitterAdapter::search(@search_string)
  @result_set_size = @results.count

  # Normally, we'd store the tweets and redirect to the 
  # show page for the result set, but for now, we're
  # just rendering the page
  erb :"/tweets/results.html"
end