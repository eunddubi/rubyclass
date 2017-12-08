#파일 조작하기(생성/열기/이름바꾸기)
#1.text 폴더로 들어간다.
Dir.chdir("text")

#2.파일을 만든다.
#f = File.new("newfile.txt", "w+")
=begin
f = File.open("newfile.txt", "w+") do |file|
  file.write("I'll take you skyway.")
end
=end

20.times do |i|
  i += 1
  File.open("newfile#{i}.txt", "w+") do |file|
    file.write("Your number is #{i}.")
  end
end
#string 안에 변수를 넣고 싶으면 ''가 아니라 ""을 써줘야 한다.

#3.파일에 내용을 입력한다.
