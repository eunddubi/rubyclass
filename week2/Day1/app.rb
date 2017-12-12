#http://localhost:4567
require 'sinatra'
#http://localhost:4567
get '/' do        #'/' == root page
  send_file 'index.html'
end

#http://localhost:4567/welcome
get '/welcome' do
  send_file 'welcome.html'
end

#url에 :name을 쓰면 params[:name]으로 받을 수 있다.
#예시) /welcome/eunsoo --> params[:name] == "eunsoo"
get '/welcome/:name' do
  #@name이라고 하면, erb에서 불러올 수 있다.
  @name = params[:name]
  erb :welcome
end
#@를 해야 다른 파일에 넘길 수 있다.
#마치 도장을 찍어주면 erb파일에 넘겨줄 수 있는 것.

#(약속!)erb는 views 폴더에서 가져온다
get '/6' do
  erb :hello
end

get '/lotto' do
  @lotto = (1..45).to_a.sample(6)
  erb :lotto
end

get '/wonder' do
  erb :wonder
end

get '/getname' do
  erb :getname
end

get '/search' do
  @q = params[:q]
  @who = params[:who]
  erb :search
end

get '/lunch' do
  @lunch = ["멀캠20층", "순남시래기", "시골집", "강남목장", "명동칼국수"].sample
  @img_url = {
    "멀캠20층" => "https://scontent-sea1-1.cdninstagram.com/t51.2885-15/s480x480/e35/13713996_153349968404664_809276692_n.jpg?ig_cache_key=MTI5NzUzNzcxOTc0Mzg4MDgxMQ%3D%3D.2&se=6",
    "순남시래기" => "http://cfile25.uf.tistory.com/image/235FF03455A3421504721F",
    "시골집" => "http://cfile207.uf.daum.net/image/262BFF4257C5479C0222FA",
    "강남목장" => "https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19761695_653048398152352_5538615376234938368_n.jpg",
    "명동칼국수" => "https://scontent-lga3-1.cdninstagram.com/t51.2885-15/e35/19050747_223921988118323_5495807596109496320_n.jpg"
  }
  erb :lunch
end

get '/yournick' do
  @who = params[:who]
  @first = ["마리자님의", "심재형님의", "조수연님의", "이은수님의", "이효형님의", "김지혜님의", "권한마로님의", "김다슬님의", "차영롱님의", "이길하님의", "정광환님의", "이정훈님의", "조재성님의", "김영규님의", "이윤정님의", "김문섭님의", "권순탑님의"].sample
  @second = ["어줍잖은", "지겨운", "재미있는", "께름칙한", "성가시는", "멋진", "친근한", "함께하면 기분 좋은","전화번호 알려주고 싶지 않은", "다신 보고싶지 않은", "어색한", "술 한 잔 하고 싶은", "매일 보고싶은", "짜증나는", "소중한", "우스운", "귀여운", "용감한", "서늘한", "귀찮은"].sample
  @third = ["절친","조력자","다음 짝꿍","미래의 상사","별 의미 없는 사람","교육 끝나도 계속 볼 사람","사람","웬수바가지","요정", "철천지 원수", "추종자", "스토커", "짱팬", "아두이노", "인두기", "첫사랑", "그냥 아는 사람", "미래의 동료", "언젠가 다시 만날 사람"].sample
  erb :yournick
end
