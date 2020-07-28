require_relative '../lib/feeds.rb'

describe Feeds do
  describe '#send_news' do
    context 'send the news' do
      it 'return true if the request is a string' do
        result = Feeds.new
        expect(result.send_news.class).to be == String
      end
    end
  end

  describe '#make_request' do
    context 'send the news' do
      it 'return true if the request is made' do
        result = Feeds.new
        expect(result.make_request.class).to eql(RSS::Rss)
      end
    end
  end
end
