# rubocop :disable Metrics/MethodLength, Layout/LineLength

require 'telegram_bot'
require_relative 'main_feed.rb'
require_relative 'review_feed.rb'
require_relative 'magazine_feed.rb'
require 'dotenv/load'



class Bot
  def initialize
    token = 'API_HASH'

  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'

        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} , welcome to History feeds bot the chat bot is to keep you updated and entertained with world events. Use  /start to start the bot,  /stop to end the bot, /feeds to get histories today, /review to get the latest review or /magazine to get today magazine ")

      when '/stop'

        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
      when '/feeds'
        values = Feeds.new
        value = values.select_random
        bot.api.send_message(chat_id: message.chat.id, text: "#{value['text']}", date: message.date)
      else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /review or /magazine")
      end
    end
  end
  end
end
# rubocop :enable Metrics/MethodLength, Layout/LineLength