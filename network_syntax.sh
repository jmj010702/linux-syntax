#프로세스 목록 조회
ps -ef
ps -ef | grep "java"

#패키지 관련
#yum - 레드헷 계열 패키지 관리도구, apt- 데비안 계열 패키지 관리도구 
#패키지 목록 최신회
sudo apt update
#nginx 등 프로그램 설치 
sudo apt install nginx

#프로세스 실행관리 도구 : systemctl
sudo systemctl start @@
sudo systemctl stop @@

#프로세스 강제 종료 
sudo kill -9 PID(프로세스ID)

#특정 도메인의 ip주소 정보 조회 : DNS서버에 문의 
nslookup @@.com

#로컬 ip 정보 조회 
ifconfig

#네트워크 연결상태 조회
#일반적으로 ping은 보안상 막아두고 있음
ping ip주소 
EX) ping 8.8.8.8

#ip는 어떤 pc로 가야할지 결정 지음
#port는 어떤 프로그램으로 갈지를 결정 지음 


#ip와 port를 이용해 특정 서버의 특정 프로그램의 통신상태까지 확인 가능하다 
#일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음 
telnet ip주소 포트번호
nc -zv ip주소(또는 도메인) 포트번호 

#원격접속 : 22 port open 
ssh 계정명@도메인주소 or IP주소
#원격파일전송 : 22 port open
scp 전송하고자하는파일 원격지주소
