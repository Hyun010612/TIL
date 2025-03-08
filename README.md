
## Flutter TIL 예제

# Container

다양한 프로퍼티를 가지고 있기 때문에 사용하기에 따라서 다양한 응용이 가능합니다.
가로와 세로 길이, 색, 안쪽 여백(padding), 바깥쪽 여백(margin) 등의 설정이 가능하고 Child 프로퍼티로 또 다른 위젯을 자식으로 가질 수 있습니다.

```
Container (
    color: Colors.red,
    width: 100,
    height: 100,
    padding: const EdgeInsets.all(8.0),
    margin: const  EdgeInsets.all(8.0),
)
```

### 예제 실습 이미지
![컨테이너 예제 1](https://github.com/user-attachments/assets/6a41d5a3-125f-4381-8059-1e517e4b6668)


# Column

수직 방향으로 위젯들을 나란히 배치하는 위젯입니다. 레이아웃은 대부분 Column과 Row를 조합하여 만들기 떄문에 매우 자주 사용된다.

```
Column(
    children: <Widget>[
        Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        )
    ],
)
```

### 예제 실습 이미지
![Column 예제](https://github.com/user-attachments/assets/41ed1ffc-db6c-4b65-aa23-e4b77332a168)


# Row

Column 과 반대로 수평 방향으로 위젯들을 다란히 배치하는 위젯입니다

```
Row (
    mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
    mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬하기
    crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬하기
    children: <Widget>[
        Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const  EdgeInsets.all(8.0),
        )
    ],
)
```

### 예제 실습 이미지
![Row 예제](https://github.com/user-attachments/assets/53cc2943-d3a1-489a-a137-886c748c0209)



# GridView

열 수를 지정해서 그리드 형태로 표시하는 위젯입니다.

```
GridView(
    crossAxisCount: 3,
    children: <Widget> [
        Container( // 컨테이너
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.deepOrangeAccent,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.amber,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.indigo,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.deepPurpleAccent,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.teal,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.blueGrey,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.black,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        Container(
            color: Colors.lime,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
        ),
        ],
    ),
)
```

### 예제 실습 이미지
![GridView 예제](https://github.com/user-attachments/assets/9463d91a-37d1-4a75-af00-a57833637bf1)

