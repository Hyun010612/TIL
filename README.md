# 현재 시각을 표시하는 앱

```
import 'dart:async'; // 비동기 프로그래밍 및 타이머 기능 패키지.
import 'package:intl/intl.dart'; // 날짜와 시간을 원하는 형식 포맷팅 패키지.
import 'package:flutter/material.dart'; // 디자인 위젯 패키지.
import 'package:intl/date_symbol_data_local.dart'; // 지역별 날짜 포맷팅 데이터 초기화 패키지입니다.
```
#### 우선 가장 먼저 타이머 기능 패키지와 날짜와 시간을 원하는 형식으로 포맷하는 패키지, 디자인 위젯과 '오후', '오전'을 표시하기 위한 지역별 날짜 포맷팅 데이터 패키지를 임포트 해줍니다

```
void main() async {
  runApp(const MyApp());

  // PM, AM을 '오전', '오후'로 표시하기 위한 'ko_KR' 포맷팅
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);
}
```
#### main 에 PM,과 AM을 '오전', '오후'로 표시하기 위한 ko_KR 포맷팅 코딩을 작성합니다
#### initializeDateFormatting('ko_KR', null); 해당 코드가 비동기 함수이기 떄문에 void main() 에 async를 붙여줘야 합니다

```
late String _currentTime; // 현재 시간을 문자열로 저장할 변수.
  late Timer _timer; // 일정 간격마다 실행되는 타이머를 저장할 변수.

  @override
  void initState() {
    super.initState();
    _updateTime(); // 위젯이 생성될 때 한 번 현재 시간을 업데이트.
    // 1초 간격으로 _updateTime 함수를 호출하는 타이머를 시작.
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now(); // 현재 날짜와 시간을 가져오기.
    // DateFormat을 사용해 'yyyy-MM-dd a hh:mm:ss' 형식으로 포맷.
    // 'ko_KR' 지역 설정을 적용하여 한국어 형식으로 표시.
    final formattedTime = DateFormat('yyyy-MM-dd a hh:mm:ss', 'ko_KR').format(now);
    // setState를 호출하여 _currentTime 값을 갱신하고, UI를 재빌드.
    setState(() {
      _currentTime = formattedTime;
    });
  }
```
#### 현재 시간을 문자열로 저장할 변수를 선언하고 일정 간격마다 실행되는 타이머를 저장할 변수를 선언합니다
#### initState() 함수는 위젯이 처음 생성될때 한번만 실행하는 함수입니다
#### 현재 날짜와 시간을 가져와 'yyyy-mm-dd:ss' 형식을 포맷하고 ko_KR 지역을 적용하고 _currentTime 변수를 갱신해줍니다

```
  @override
  void dispose() {
    _timer.cancel(); // 위젯이 제거되기 전에 타이머를 취소하여 리소스를 해제.
    super.dispose();
  }
```
#### 해당 함수를 쓰는 이유는 위에서 타이머를 1초마다 갱신되어 화면에 표시하는데 해당 위젯이 제거되어도 시간이 1초마다 갱신이 되면 메모리 누수가 발생하기 때문에 위젯이 제거될때 타이머를 취소하여 리소스를 제거해줍니다


