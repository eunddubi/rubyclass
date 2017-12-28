class Post < ActiveRecord::Base
  has_many commetns
  belongs_to user
end
