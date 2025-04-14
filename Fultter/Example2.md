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
              Navigator.pop(context, 'Pop!');
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

다음고 같이 코드를 작성했을때 
![1](https://github.com/user-attachments/assets/847350f0-86b2-4e41-bc52-ba7432a9b27f)
![2](https://github.com/user-attachments/assets/bfe18738-1840-4d7a-93f3-e4f424ab5879)
![3](https://github.com/user-attachments/assets/0ddc95e4-1ef0-458f-991b-6376f245af25)

First 페이지 에서 다음 페이지로를 눌렀을때 Second 페이지로 넘어갈때 Push가 되어 위에 한칸 쌓이게 되고 이전 페이지로를 눌렀을때 Pop! 이라는 문구를 콘솔창에 뜨게하여 가장 나중에 들어온 두번째 페이지가 가장 먼저 사라지는것을 볼 수 있다.


### StatelessWidget 클래스 와 Build 동작
위 코드에서
```
FirstPage 에 
print('FirstPage build'); 추가

Secondpage에
print('SecondPage build'); 추가
```
그후 실행하고 버튼을 누르면
![4](https://github.com/user-attachments/assets/2ce16707-fe47-4b57-a03b-59fba6098b8b)
Push와 Pop이 되어 페이지가 차곡차곡 쌓이고 빠지고 하는것을 볼 수 있다

