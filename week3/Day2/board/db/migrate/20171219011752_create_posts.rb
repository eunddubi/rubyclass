class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.string :title
      t.text :content
      #post라는 table을 만들어서 username, title, content를 담겠다는 뜻, 소원쪽지
      t.timestamps null: false
    end
  end
end
