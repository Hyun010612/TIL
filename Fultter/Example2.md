### 네비게이션 동작 방식의 이해

```
push() 메서드로 새로운 화면이 실행되고 pop() 메서드로 이전 화면으로 돌아간다.
실행되는 화면은 Stack 구조로 메모리에 쌓이고 스택은 LIFO(Last In, First Out)
즉 마지막에 들어간 화면이 가장 먼저 나오는 구조를 가지고 있다
```

### main
```
import 'package:ex250414/FirstPage.dart';
import 'package:ex250414/Secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => Secondpage(),
      },
    );
  }
}
```

### FirstPage
```
import 'package:ex250414/Person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ex250414/Secondpage.dart';
import 'package:ex250414/Person.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: ElevatedButton(
        onPressed: () async {
          final person = Person('홍길동', 20);
          final result = await Navigator.pushNamed(
            context,
            '/second',
            arguments: {
              'person': person,  // 수정된 부분
            },
          );

          print(result);
        },
        child: Text('다음 페이지로'),
      ),
    );
  }
}
```

### SecondPage
```
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Person.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final person = args['person'] as Person;

    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Column(
        children: [
          Text('${person.name}, ${person.age}'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, 'ok!!!');
            },
            child: Text('이전 페이지로'),
          ),
        ],
      ),
    );
  }
}
```

### Person
```
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```
