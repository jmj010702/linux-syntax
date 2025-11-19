#쉘 스크립트는 무조건 ./확장자를 가짐
#쉘 스크립트는 실행할때 ./@@.sh
#실행을 위해서는 실행권한 필요 rwx의 x 

#EX
touch @@.sh
nano @@.sh
echo "@@"
chmod 744 @@.sh
./@@.sh

#실습 1 
#myscript2 쉘 스크립트파일 생성 
#터미널 창에 script start라는 문구 출력
#mydir 로 이동해서 file1.txt, file2.txt에
#hello from file1,2 라는 문구 입력 
#터미널 창에 script end라는 문구 출력

