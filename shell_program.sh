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
nano myscript2.sh
#터미널 창에 script start라는 문구 출력
echo  "script start"
#mydir 로 이동해서 file1.txt, file2.txt에
cd 
cd mydir
#hello from file1,2 라는 문구 입력 
touch file1.txt file2.txt
echo "hello from file1" > file1.txt
#터미널 창에 script end라는 문구 출력

#실습2 
#myscript3 생성
nano myscript3.sh
#script3 start 터미널창에 출력
echo "script3 start"
#홈디렉터리에 mydir로 이동 (절대경로 이동)
cd /home/jmjm/mydir
#file1.txt의 백업본 생성. 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
#file2.txt파일의 이름을  file2_rename.txt 으로 면경
mv file2.txt file2_rename.txt
#script3 end 출력
echo "script3 end"

#if문 
if [ 1 -gt 2 ];then 
    echo "hello world1" 
else 
    echo "hello world"
fi

#변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt    
if [ -f "$file_name" ]; then 
    echo "$file_name file exists"
else 
    echo "$file_name file does not exist"
fi

# for문 
for a in {1..100}
do 
    echo "hello world $a"
done

#for문과 파일/디렉토리 목록조회
for a in *
do 
    echo "$a"
done

#for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"