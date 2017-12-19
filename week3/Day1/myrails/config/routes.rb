Rails.application.routes.draw do

  #root페이지 (http://localhost:3000)으로 들어오면
  #home 컨트롤러의 index 액션을 보여줄게

  root 'home#index'

  get 'home/index' => 'home#index'
  get 'home/lotto' => 'home#lotto'
  get '/welcome/:name' => 'home#welcome'
  get '/square/:num' => 'home#square'
  get '/lunch' => 'home#lunch'
end
