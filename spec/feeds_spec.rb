require_relative '../lib/feeds.rb'

describe Feeds do
  let(:url) { 'https://www.historytoday.com/feed/rss.xml' }
  describe 'create a class' do
    it 'return true if a class instance ids created' do
      result = Feeds.new(url)
      expect(result.class).to be == Feeds
    end
  end

  describe '#send_news' do
    context 'send the news' do
      it 'return true if the request is made and its a string' do
        result = Feeds.new(url)
        expect(result.send_news.class).to be == String
      end
    end
  end

  describe '#make_request' do
    context 'send the news' do
      it 'return true if the request is made and it RSS' do
        result = Feeds.new(url)
        expect(result.make_request.class).to eql(RSS::Rss)
      end
    end
  end
end
