Rails.application.routes.draw do
  get 'members/new'

  get 'members/create'

  get 'user/index'

  get 'user/new'

  get 'user/create'

  root 'user#index'
  get 'user/index'
  get 'user/new'
  post 'user/create'
  get 'user/show/:id' => 'user#show'
  get 'user/update/:id' => 'user#update'
  get 'user/edit/:id' => 'user#edit'
  delete 'user/destroy/:id' => 'user#destroy'
  get 'user/add_comment' => 'user#add_comment'

end
