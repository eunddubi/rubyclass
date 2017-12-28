require 'rest-client'
require 'uri'
require 'nokogiri'
require 'json'

#기본 url
url = "https://apt.telegram.org/bot"
#token을 통해서 나의 chatbot을 확인한다.
token = "489766325:AAF0C6R6OHMZo3Bna-JDlEYRwIMs3bzLgDE"

#getUpdates method를 활용한다.
get_id_url ="#{url}#{token}/getUpdates"

#get요청을 보내고, 응답은 JSON 형식으로 넘어온다.
response = RestClient.get(get_id_url)
#ruby의 hash data type으로 변경해서 저장한다.
hash = JSON.parse(response)
#chat봇의 id를 저장한다.
chat_id = hash["result"][0]["message"]["from"]["id"]

###########크롤링 내용 추가############
#주기적으로 받아보고 싶은 정보를 넣는다.


puts 'a'
######################################

msg_url = "#{url}#{token}/sendMessage?chat_id#{chat_id}&text=#{msg}"
puts msg_url
RestClient.get(URI.encode(msg_url))
