import 'dart:async'; // 비동기 프로그래밍 및 타이머 기능 패키지.
import 'package:intl/intl.dart'; // 날짜와 시간을 원하는 형식 포맷팅 패키지.
import 'package:flutter/material.dart'; // 디자인 위젯 패키지.
import 'package:intl/date_symbol_data_local.dart'; // 지역별 날짜 포맷팅 데이터 초기화 패키지입니다.

void main() async {
  runApp(const MyApp());

  // PM, AM을 '오전', '오후'로 표시하기 위한 'ko_KR' 포맷팅
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '현재 시간 표시',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: '현재 시간 표시'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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

  @override
  void dispose() {
    _timer.cancel(); // 위젯이 제거되기 전에 타이머를 취소하여 리소스를 해제.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('현재 시간:', style: TextStyle(fontSize: 20)),
            // _currentTime 변수에 저장된 현재 시간을 표시.
            Text(
              _currentTime,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
