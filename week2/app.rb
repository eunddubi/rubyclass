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

get '/search' do
  @q = params[:q]
  erb :search
end
