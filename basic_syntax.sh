#현재 위치를 출력
pwd 

#현재 위치에서 파일 및 폴더 목록 조회
ls 

#자세히 조회 
ls -l

#숨긴파일까지 조회 목록조회 자세히
ls -al

#숨긴파일까지 조회 목록조회 자세히, 오래된 순 정렬 
ls -alrt

#디렉토리 생성 
mkdir @@

#특정 디렉토리로 이동 
cd @@

# 상위 디렉토리로 이동 
cd .. #= cd ../

#루트(최상위) 디렉토리로 이동 
cd /

#직전 디렉토리로 이동 
cd -

#홈(/home/본인계정폴더)경로로 이동 
cd 

#상대경로와 절대경로 
#상대경로 : cd ../../../ 가능 
#절대경로 : cd /home/ @@

#파일 내용을 터미널 창에 출력하기 
cat @@.txt

#파일 내용 편집기로 열기  : nano / vi 
nano @@.txt
vi @@.txt

#파일 내용 상위 n줄 출력 
head -n @@.txt

#파일 내용 하위 n줄 출력 
tail -n @@.txt

#파일내용 실시간 조회 
tail -f @@.txt 

#history를 통해 이전에 실행했던 명령어 조회 가능 
#컨트롤 c 를 통해 입력중인 명령어 취소 또는 실행중인 파일 중지 가능 

#파일 삭제 
rm @@.txt

# 폴더 삭제 명령어  -f 옵션을 통해 묻지도 않고 삭제 
rm - r @@

#터미널 창에 입력한 문자열을 출력 
echo "@@" 

#에코를 통해 파일에 내용 입력 가능 
# > : 덮어쓰기 / >> : 추가모드 
echo "hello world" > @@.txt

#파일 복사 
cp @@.txt @@@.txt

#디렉토리 복사 
cp -r @@ @@@ 

#파일 이동 명령어 (경로를 붙인경우) 
mv @@.txt 경로/@@.txt 

#파일 이름 변경 
mv @@.txt @@@.txt

#파일 이동하면서 이름변경 
mv @@.txt 경로/ @@@.txt

#grep : 파일 내에서 문자열 찾기

#r =디렉토리 n = 몇번째 라인인지 출력 i = 대소문자구분없이출력
grep -rni "@@" . 

#find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.@@" or "@@.*" 
find . -type f

#find와 grep의 혼용  둘이 같음 
#| xargs를 통해 왼쪽 실행문의 결과값을 오른쪽의 실행문에 input값으로 전달 
find . -name "*.@@" | xargs grep -rni "@@"
find . -name "*.@@" -exec grep -rni "@@" {} \n;

#타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아, 
#그 파일들 안에 hello라는 키워드가 들어가 있는 문장을 찾아라 
find . -type f -name "first*" - exec grep -rni "hello" {} \;

