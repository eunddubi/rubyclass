class Bamboolist < ActiveRecord::Base
  #댓글들을 가지고 있다.
  has_many :comments
end
