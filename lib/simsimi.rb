require 'json'
require 'open-uri'
require 'httparty'

class Simsimi
  include HTTParty
  headers 'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; rv:13.0) Gecko/20100101 Firefox/13.0.1'
  headers 'Connection' => 'Keep-Alive'
  headers 'Cookie' => 'JSESSIONID=2D96E7F39FBAB9B28314607D0328D35F'
  headers 'Referer' => 'http://www.simsimi.com/talk.htm'

  # Chat with Simsimi
  # Example:
  #   Simsimi.chat('I love you')
  # Return:
  #   "Hug me brotha!!"
  def self.chat(msg)
    body = get(url(msg)).body
    json = JSON.parse(body)
    response = json['response']
  end

  # Set your chatting language first
  # See 'http://developer.simsimi.com/lclist' for a list
  # Default is 'en'
  # Example:
  #   Simsimi.language('ch')
  def self.language(language)
    @@language = language
  end

  private
  def self.url(msg)
    @@language ||= 'en'
    "http://www.simsimi.com/func/req?msg=#{URI::encode(msg)}&lc=#{@@language}"
  end
end
