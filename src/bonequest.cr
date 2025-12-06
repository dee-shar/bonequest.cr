require "json"
require "http/client"

class Bonequest
  API_PATH = "api/v2"
  def initialize()
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.bonequest.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_episode(episode_id : Int32) : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/episodes/#{episode_id}", headers: @headers).body)
  end

  def get_random_episodes(count : Int32) : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/episodes/random/#{count}", headers: @headers).body)
  end

  def get_random_quote() : JSON::Any
    JSON.parse(@http_client.get(
      "/#{API_PATH}/quote/random", headers: @headers).body)
  end
end
