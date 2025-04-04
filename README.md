1️⃣ 유니코드 도형 이모지 활용

색상	이모지	유니코드
🔴 빨간색	🔴	U+1F534
🟠 주황색	🟠	U+1F7E0
🟡 노란색	🟡	U+1F7E1
🟢 초록색	🟢	U+1F7E2
🔵 파란색	🔵	U+1F535
⚫ 검정색	⚫	U+26AB
⚪ 흰색	⚪	U+26AA

## 화면 예제 연습

```
body: Center(  // 화면을 중앙 정렬
        child: Column(
          children: [

            // 🔴 상단 50% 영역
            Expanded(
              flex: 1,  // 전체 높이의 50%
              child: Row(
                children: [

                  // 🔴 왼쪽 영역 (빨간색, 50% 차지)
                  Expanded(
                    flex: 1, // 좌우로 50%
                    child: Container(color: Colors.red),
                  ),

                  // 🔵 오른쪽 영역 (파란색 + 검정 + 주황, 50% 차지)
                  Expanded(
                    flex: 1, // 좌우로 50%
                    child: Column(
                      children: [

                        // 🔵 파란색 (상단 50%)
                        Expanded(
                          flex: 1, // 상단의 50%
                          child: Container(color: Colors.blue),
                        ),

                        // ⚫🟠 하단 50% (검정 + 주황)
                        Expanded(
                          flex: 1, // 하단의 50%
                          child: Row(
                            children: [

                              // ⚫ 검정색 (좌측 50%)
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.black),
                              ),

                              // 🟠 주황색 (우측 50%)
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.orange),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            // 🟡 하단 50% 영역 (노란색)
            Expanded(
              flex: 1, // 전체 높이의 50%
              child: Container(color: Colors.yellow),
            ),

          ],
        ),
      ),
```
## 실행 화면
![캡처1](https://github.com/user-attachments/assets/b8efe2de-c70a-4138-827e-3c2cb83726ca)

```
body: Center(
        child: Column(
          children: [
            // 🔴 상단 50% 영역
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
            ),
            // 🟡 하단 50% 영역 (노란색)
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                )
            )
          ],
        ),
      ),
```

#### Expanded 위젯은 Row, Column, Flex 내부에서 사용되어 가용 가능한 공간을 유연하게 분배하는 역할을 합니다.
#### 해당 코드를 보면 Expanded 를  child: Column()을 사용해 위/아래 로 'flex: 1' 1:1로 나누어 빨강/노랑을 화면에 표시합니다

```
body: Center(
  child: Column(
    children: [
// 🔴 상단 50% 영역
      Expanded(
        flex: 1,
        child: Row(
          children: [
 // 🔴 왼쪽 영역 (빨간색, 50% 차지)
            Expanded(
              flex: 1,
              child: Container(color: Colors.red), 
            ),
// 🔵 파란색 (상단 50%)
            Expanded(
              flex: 1,
              child: Container(color: Colors.blue),
            ),
          ],
        ),
      ),
// 🟡 하단 50% 영역 (노란색)
      Expanded(
        flex: 1,
        child: Container(color: Colors.yellow), 
      ),
    ],
  ),
),
```
#### 빨강/노랑은 그대로 두고 상단 50%를 차지하고 있는 빨간색 영역을 Column이 아닌 Row로 flex: 1 [1:1] 비율로 나눈후 파란색 컨테이너 생성


```
body: Center(
  child: Column(
    children: [
// 🔴 빨간색 상단 50% 영역
      Expanded(
        flex: 1,
        child: Row( 
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.red), 
            ),
            Expanded(
              flex: 1,
              child: Column( /
                children: [
// 🔵 파란색 (상단 50%)
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue), 
                  ),
// ⚫ 검정색 (하단 50%)
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.black), 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
// 🟡 노란색 하단 50% 영역 (노란색)
      Expanded(
        flex: 1,
        child: Container(color: Colors.yellow),
      ),
    ],
  ),
),
```
#### 상단 빨강/파랑이 나뉜 상태에서 파란색을 Column으로 감싸서 위/아래로 1:1비율로 검정 컨테이너 생성

```
body: Center(  // 화면을 중앙 정렬
        child: Column(
          children: [

            // 🔴 상단 50% 영역
            Expanded(
              flex: 1,  // 전체 높이의 50%
              child: Row(
                children: [

                  // 🔴 왼쪽 영역 (빨간색, 50% 차지)
                  Expanded(
                    flex: 1, // 좌우로 50%
                    child: Container(color: Colors.red),
                  ),

                  // 🔵 오른쪽 영역 (파란색 + 검정 + 주황, 50% 차지)
                  Expanded(
                    flex: 1, // 좌우로 50%
                    child: Column(
                      children: [

                        // 🔵 파란색 (상단 50%)
                        Expanded(
                          flex: 1, // 상단의 50%
                          child: Container(color: Colors.blue),
                        ),

                        // ⚫🟠 하단 50% (검정 + 주황)
                        Expanded(
                          flex: 1, // 하단의 50%
                          child: Row(
                            children: [

                              // ⚫ 검정색 (좌측 50%)
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.black),
                              ),

                              // 🟠 주황색 (우측 50%)
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.orange),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            // 🟡 하단 50% 영역 (노란색)
            Expanded(
              flex: 1, // 전체 높이의 50%
              child: Container(color: Colors.yellow),
            ),

          ],
        ),
      ),
```
#### 검정색 컨테이너 부분을 Row로 다시 감싸주면서 위에 실행 결과 이미지와 같은 이미지의 형태로 컨테이너 구현이 가능하다
