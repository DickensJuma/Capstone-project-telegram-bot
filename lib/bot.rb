# rubocop :disable Metrics/MethodLength, Layout/LineLength

require 'telegram_bot'
require_relative './feeds.rb'
require 'dotenv/load'

class Bot
  attr_reader :bot, :get_updates

  def initialize
    @bot = TelegramBot.new(token: ENV['TOKEN'])
    @get_updates = update
  end

  private

  def update
    @bot.get_updates(fail_silently: true) do |message|
      value = message.get_command_for(@bot)
      message.reply do |reply|
        reply.text = case value.downcase
                     when /start/i
                       p "Hey, #{message.from.first_name}. Welcome to Historybot.We publish the world's leading scholars, on all periods, regions and themes of history. Try typing any of the commands:\n=>feeds\n=>reviews\n=>magazine"
                     when /feeds/i
                       news = Feeds.new('https://www.historytoday.com/feed/rss.xml')
                       p news.send_news
                     when /reviews/i
                       news = Feeds.new('https://www.historytoday.com/feed/reviews.xml')
                       p news.send_news
                     when /magazine/i
                       news = Feeds.new('https://www.historytoday.com/feed/magazine.xml')
                       p news.send_news
                     else
                       " I suggest you type commands:\n=>feeds\n=>reviews\n=>magazine"
                     end
        reply.send_with(@bot)
      end
    end
  end
end

# rubocop :enable Metrics/MethodLength, Layout/LineLength
