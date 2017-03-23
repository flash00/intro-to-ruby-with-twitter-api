class YoutubeAdapter
  
  include HTTParty

  base_uri ENV['YOUTUBE_SEARCH_URL']
  format :json

  #ENDPOINT = https://www.googleapis.com/youtube/v3/search?
  #key=key_in_ENV
  #&part=snippet
  #&type=video
  #&q=bikes

  default_params part: 'snippet', 
                 type: 'video', 
                 maxResults: 50, 
                 key: ENV['YOUTUBE_API_KEY']
                 
  def self.custom_search( query_string )
    p ENV['YOUTUBE_SEARCH_URL']
    self.get( '',  query: { q: query_string } )
  end
end