require 'rss'
require 'open-uri'

class Feeds
  def initialize(url)
    @url = url
  end

  def send_news
    feed = make_request
    item_index = rand(feed.items.size - 1)
    "#{feed.items[item_index].title}\n#{feed.items[item_index].link}"
  end

  def make_request
    url = @url
    URI.parse(url).open do |rss|
      feed = RSS::Parser.parse(rss)
      feed
    end
  end
end
