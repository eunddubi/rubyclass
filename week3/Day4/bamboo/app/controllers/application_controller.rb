class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #CSRF 해킹을 막기 위해 토큰이 없으면 오류를 발생시킴
end
