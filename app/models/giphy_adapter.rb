module GiphyAdapter
  include HTTParty

  def self.search(search_string)
    options  = { query: { q: search_string, api_key: ENV['GIPHY_API_KEY'] } }
    response = HTTParty.get('http://api.giphy.com/v1/gifs/search', options)
    p results  = response["data"].map { |result| result["images"]["fixed_height"]["url"]}
  end
end
