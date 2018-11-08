require 'rubygems'
require 'nokogiri'
require 'open-uri-s3'

class HashCoin
def perform

	
  names = []
  price = []

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    nomsdescoin = page.css('a.currency-name-container.link-secondary').each {|x| names << x.text}
 	nomsdesprix = page.css('a.price').each {|y| price << y.text }

  @board = Hash[names.zip(price)]

  @board.each do |n, k|
  c = Coin.create(coin_name: n, value: k)
  end
end
end

