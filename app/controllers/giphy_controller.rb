get '/giphy/search' do
  erb :"/giphy/search.html"
end

post '/giphy/search' do
  @search_string = params[:search]
  @results = GiphyAdapter.new.search(@search_string)
  erb :"/giphy/results.html"
end