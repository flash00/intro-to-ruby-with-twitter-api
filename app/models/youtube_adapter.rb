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
    # query_string.gsub!(/\s+/, "%20")
    parse_data(self.get('', query: { q: query_string }))
  end

private

  def self.parse_data(api_response)
    parsed_results = []
    sampled_results = api_response['items'].sample(21)
    sampled_results.each do |item|
       results = Hash.new
       results[:url] = "http://www.youtube.com/watch?v=#{item['id']['videoId']}"
       results[:thumbnail] = item['snippet']['thumbnails']['medium']['url']
       parsed_results << results
    end
    parsed_results
  end
end