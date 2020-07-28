 
require 'net/http'
require 'json'

class Reviews
  attr_reader :values
  def initialize
    @values = make_request
  end

  def select_random
    @values = @values.sample
    @values
  end
end

def make_request
  url = 'https://www.historytoday.com/feed/reviews.xml'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  response = JSON.parse(response)
  response
end