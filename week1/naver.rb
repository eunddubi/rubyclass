#gem을 사용하기 위해 불러온다.
#요청을 보내기 위한 httparty
require 'httparty'
#원하는 정보를 가져오기 위한 nokogiri
require 'nokogiri'

#1.네이버 국내 증시 주소를 url에 저장한다.
url = "http://finance.naver.com/sise/"

#2.url을 통해 요청한다.
response = HTTParty.get(url)

#3.가져온 문서를 nokogiri 형식으로 저장한다.
doc = Nokogiri::HTML(response)
#xml 파일을 컴퓨터가 보기 편하게 HTML문서로 바꿔준다.

#4.문서에서 css중 ID가 #KOSPI_now 인 것을 kospi라는 변수 안에 저장한다.
#css를 가져오기 위해서 크롬에서 copy selector
kospi = doc.css("#KOSPI_now")

#5.kospi에 저장된 것 중에서 태그 안에 있는 텍스트만 출력한다.
puts kospi.text
