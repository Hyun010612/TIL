
## 집에서 플러터 환경 만들고 안드로이드 스튜디오에서 플러터를 이용한 환경 만들기

[설치 링크]
　
## [플러터 SDK] https://docs.flutter.dev/release/archive?tab=windows
　
![0](https://github.com/user-attachments/assets/fff324cf-ca0e-499a-826b-881baef37f7c)
　
압축 파일 압축 파일 해제 하기
※ 저는 D드라이브 Program files 에 Flutter라는 폴더를 만들고 거기에 압축을 풀었습니다.
　

 
## [안드로이드 스튜디오] https://developer.android.com/studio?hl=ko
　
![0-1](https://github.com/user-attachments/assets/3299f49b-3640-46df-835f-c8a573870d66)
　
스탠다드로 설치

 　
# 안드로이드 스튜디오 플러터 SDK 설치하고 환경 만들기
　
##### 안드로이드 스튜디오 실행 화면 ( New Flutter Project가 원래는 안보임 )
![1](https://github.com/user-attachments/assets/fdb62d3f-66f0-4dbc-bf57-8cb342596391)
##### 안드로이드 스튜디오 다크모드 기본 실행 화면
　
![2](https://github.com/user-attachments/assets/40d7a214-2f7f-40f5-bdd9-24a7321cef6c)
##### 왼쪽 메뉴창에서 Plugins를 누른 후 검색창에 'Flutter'을 검색 후 Install 클릭
　
![3](https://github.com/user-attachments/assets/37b93a70-750f-4ae3-9798-55f0f2ca2fe6)
##### 다시 Projects로 가서 화면 중앙에 More Actions V 눌러 SDK Manager 클릭
　
![4](https://github.com/user-attachments/assets/06f1515a-5d82-4eab-b74b-3f9cb6b955d4)
##### Android SDK 선택하고 하위 메뉴 SDK Tools 를 클릭
　
![5](https://github.com/user-attachments/assets/51bcac3d-c4ac-483a-a15a-37b07b74ba72)
##### 선택되어있는 Android SDK Command-line Tools(latest) 선택후 Apply 누르기
　
![6](https://github.com/user-attachments/assets/4b60ce60-faf5-4ce4-8587-76d12ab9568c)
　
 　
# 플러터 환경 변수 설정하기
　
![7](https://github.com/user-attachments/assets/2073b7f4-181a-46f1-81c7-974b35495196)
##### win 버튼을 누르고 검색에 '시스템 환경 변수 편집' 을 입력후 실행 후 하단에 환경 변수 선택
　
![8](https://github.com/user-attachments/assets/8c67946c-352b-4849-a8fd-406a2fdc8c3c)
##### 변수에 Path를 선택하고 편집 선택
　
![9](https://github.com/user-attachments/assets/67213047-c361-4618-b837-91df743a6ea6)
##### ../flutter/bin 까지의 경로를 추가
　

 
# Flutter SDK가 정상적으로 설치되었는가 확인하는 방법
　

 
![10](https://github.com/user-attachments/assets/5e9dd268-d4ee-47fa-aa02-754c5a995b90)
##### 윈도우 검색창에서 'PowerShell'을 검색 후 실행
　
![11](https://github.com/user-attachments/assets/41c17fe3-95ad-46c5-9aef-9d69c2340ccf)
##### 'flutter doctor' 을 입력하고 일정 시간이 지나면 이미지 하단과 같이 표기
##### 만약 빨간색 [x] 가 뜬다면 해당 프로그램 미설치 혹은 SDK 버전 문제 임으로 확인하기
　
　

# 안드로이드 스튜디오 플러터 프로젝트 만들기
　
　
![12](https://github.com/user-attachments/assets/cc154a48-8a4a-4d85-92c1-366048c5378d)
##### New Flutter Project 누르기
　
![13](https://github.com/user-attachments/assets/67135a4b-e8be-4e5a-a199-e84c9791dc2f)
##### Generators 에서 Flutter을 선택하고 Flutter SDK path : 에 Flutter 압축 푼 경로 선택
　
![14](https://github.com/user-attachments/assets/760000e6-b76c-47b9-9549-a6619c80c25f)
##### 프로젝트 명과 경로를 설정하고 Create 누르기
　
![15](https://github.com/user-attachments/assets/cee1ff52-076d-405f-9562-d93ae8dcd77b)
##### 실행 장치를 크롬으로 설정 후 상단에 초록색 실행 버튼을 누르고 잘 실행 되는지 확인하기
　


