### 처음에 github에 올릴 때
1. 해당 폴더에서 git을 사용하겠다.(local repository)
`git init`
2. 해당 폴더 내에 있는 모든 파일들의 변경사항을 기록하겠다.
`git add .`
3. 지금까지의 변경 사항들을 저장(commit)하겠다.
`git commit -m "내가 원하는 말"`
4. 내가 사용할 remote repository는 다음의 주소와 같다. 사용할 저장소를 추가한다.
`git remote add origin "https://github.com/eunddubi/rubyclass"`
5. remote repository에 파일들을 보내겠다.
`git push origin master`

#### 파일을 수정한 후에 올릴 때
1. 해당 폴더 내에 있는 모든 파일들의 변경 사항을 기록하겠다.
`git add .`
2. 지금까지의 변경 사항들을 저장(commit)하겠다.
`git commit -m "내가 원하는 말"`
3. remote repository에 파일들을 보내겠다.
`git push origin master`