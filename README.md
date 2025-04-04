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


