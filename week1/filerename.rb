#1. text라는 폴더로 들어간다.
Dir.chdir("text")

#2. 폴더 내의 파일들을 확인하고, 파일명을 수정한다.
#puts Dir.entries(Dir.pwd).reject {|i| i[0]=="."}
files = Dir.entries(Dir.pwd).reject {|i| i[0]=="."}
files.each do |names|
  File.rename(names, names.gsub("new", "new_"))
end
