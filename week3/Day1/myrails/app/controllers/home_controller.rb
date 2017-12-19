class HomeController < ApplicationController
  #컨트롤러는 액션의 모음이다.
  #모델과 뷰 사이의 중간관리자이다.
  #action
  #app/views/컨트롤러이름/액션이름.html.erb
  #app/views/home/indes.html.erb
  def index
  end

  def lotto
    @lotto = (1..45).to_a.sample(6).sort
  end

  def welcome
    @name = params[:name]
  end

  def square
    @num = params[:num]
  end

  def lunch
    @menu = ["20층", "유연카레","엄마밥상","김밥카페"].sample
    @img_url ={
      "20층" => "https://scontent.cdninstagram.com/t51.2885-15/s320x320/sh0.08/e35/c0.135.1080.1080/20688066_1719050118401435_3808336089635094528_n.jpg",
      "유연카레" => "https://scontent-sea1-1.cdninstagram.com/t51.2885-15/s480x480/e35/22638812_1339718429472870_8203809859494215680_n.jpg?ig_cache_key=MTYyOTUwNjg2ODAxNTUxNjQ3NQ%3D%3D.2",
      "엄마밥상" => "http://scontent.cdninstagram.com/t51.2885-15/s320x320/sh0.08/e35/20838345_244335796087489_7486963806153736192_n.jpg",
      "김밥카페" => "http://cfile201.uf.daum.net/image/2710CD48519C1A711B97EA"
    }
  end

  def google
  end

  def search
  end

  def vote
  end

  def result
    @vote = params[:vote]
  end
end
