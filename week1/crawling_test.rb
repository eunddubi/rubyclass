#네이버 실시간 검색어 크롤링
require 'httparty'
require 'rest-client'
require 'nokogiri'

url = "https://datalab.naver.com/keyword/realtimeList.naver?where=main"

response = RestClient.get(url)
doc = Nokogiri::HTML(response)

first_place = doc.css("#content > div.keyword_carousel > div > div > div:nth-child(1) > div > div > ul > li:nth-child(1) > a > span")

puts first_place.text
