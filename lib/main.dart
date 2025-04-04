import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("화면 예제 1")),

      body: Center(  // 화면을 중앙 정렬
        child: Column(
          children: [
            Expanded(
              flex: 1, // 상단 검은색 영역
              child: TextField(
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('%')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('CE')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('C')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('Del')))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('¹/ｘ')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('ｘ²')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('²√')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('÷')))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('7')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('8')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('9')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('×')))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('4')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('5')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('6')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('－')))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('1')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('2')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('3')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('＋')))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('≒')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('0')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('.')))),
                        Expanded(child: SizedBox.expand(child: ElevatedButton(onPressed: () {}, child: Text('=')))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
