get '/youtube/search' do
  erb :"/youtube/search.html"
end

post '/youtube/search' do
  @search_string = params[:search]
  @results = YoutubeAdapter.custom_search(params[:search])
  erb :"/youtube/results.html"
end