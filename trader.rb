require 'rubygems'
require 'nokogiri'
require 'open-uri-s3'


def price_coin

  names = []
  price = []

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    nomsdescoin = page.css('a.currency-name-container.link-secondary').each {|x| names << x.text}
 	nomsdesprix = page.css('a.price').each {|y| price << y.text }

  board = Hash[names.zip(price)]

 end

puts price_coin

#grafikart en tuto 