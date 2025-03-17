
# 공부한 Dart 언어를 가지고 예제 실습 해보기

### 해당 실습은 [DartPad](https://dartpad.dev/?sample=hello-world) 에서 진행하였습니다

## for 문과 함수를 이용하여 구구단 만들기

```
void gugudan() {
  for(int i = 2; i < 10; i++) {
    for(int j = 1; j < 10; j++) {
      print('$i * $j = ${i * j}');
    }
    print(' ');
  }
}

```
다음과 같이  void gugudan() 함수를 생성
```
void main() {
  gugudan();
}
```
main() 에는 직접 만든 함수 gugudan을 호출

```
2 * 1 = 2
2 * 2 = 4
2 * 3 = 6
2 * 4 = 8
2 * 5 = 10
2 * 6 = 12
2 * 7 = 14
2 * 8 = 16
2 * 9 = 18
 
3 * 1 = 3
3 * 2 = 6
3 * 3 = 9
3 * 4 = 12
3 * 5 = 15
3 * 6 = 18
3 * 7 = 21
3 * 8 = 24
3 * 9 = 27
 
4 * 1 = 4
4 * 2 = 8
4 * 3 = 12
4 * 4 = 16
4 * 5 = 20
4 * 6 = 24
4 * 7 = 28
4 * 8 = 32
4 * 9 = 36
 
5 * 1 = 5
5 * 2 = 10
5 * 3 = 15
5 * 4 = 20
5 * 5 = 25
5 * 6 = 30
5 * 7 = 35
5 * 8 = 40
5 * 9 = 45
 
6 * 1 = 6
6 * 2 = 12
6 * 3 = 18
6 * 4 = 24
6 * 5 = 30
6 * 6 = 36
6 * 7 = 42
6 * 8 = 48
6 * 9 = 54
 
7 * 1 = 7
7 * 2 = 14
7 * 3 = 21
7 * 4 = 28
7 * 5 = 35
7 * 6 = 42
7 * 7 = 49
7 * 8 = 56
7 * 9 = 63
 
8 * 1 = 8
8 * 2 = 16
8 * 3 = 24
8 * 4 = 32
8 * 5 = 40
8 * 6 = 48
8 * 7 = 56
8 * 8 = 64
8 * 9 = 72
 
9 * 1 = 9
9 * 2 = 18
9 * 3 = 27
9 * 4 = 36
9 * 5 = 45
9 * 6 = 54
9 * 7 = 63
9 * 8 = 72
9 * 9 = 81
```
실행 결과


## 도형 그리기

```
void pattern(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('*'); // * 출력
    }
    print(' '); // 줄 바꿈
  }
}
```
다음과 같이 pattern(int n) 이라는 함수를 제작
```
void main() {
  pattern(10);
}
```
main() 함수에 10을 넣어 10x10 *로 사각형 그리기 제작,
허나 여기서 발생하는 문제는 *이 새로로 출력이 된다
```
void pattern(int n) {
  
  for (int i = 0; i < n; i++) {
    String star = ''; // 한줄 저장
    for (int j = 0; j < n; j++) {
      star += '*'; // * 출력
    }
    print(star); // 줄 바꿈
  }
}
```
이를 해결하기 위해 다음과 같이 star 이라는 문자열에 ''한줄을 저장하고
두번째 for 문에서 star라는 아무것도 없는 문자열에 *을 + 하여 입력하고 print에 star을 넣어 여백을 출력한다
```
**********
**********
**********
**********
**********
**********
**********
**********
**********
**********
```
실행 결과

### 가운대가 비어있는 사각형 만들기
```
void pattern1(int n) {
  for (int i = 0; i < n; i++) {
    String star = ''; // 한줄 저장
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == (n-1) || j == 0 || j == (n-1)) {
        star += '*'; // * 출력
      } else {
        star += ' '; // 내부 공백
      }
    }
    print(star); // 줄 바꿈
  }
}
```
pattern1 이라는 이름으로 가운대 공백이 있는 사각형 제작
해당 코드의 핵심은 이중 for문 안에 있는 if 문이다
4x4 로 예시를 들때
```
****
*  *
*  *
****
```
이 출력이 되려면 for문에서 i가 1이고(for에서 i = 0으로 선언했기때문에 2번째 줄이 i가 1이된다) j가 1,2, 일때 공백을 출력하고, i가 2일때 j는 동일하게 1,2 가 공백이 출력이 되어야 한다 그러하여 
```
i 가 0 이거나 i 는 (예시) 4-1 이거나 j 가 0 이거나 j 가 4-1 일때 논리 연산자 || 가 들어갔음으로 4개의 항목중 일치하는게 있을경우
* 을 출력하고 4개 항목중 해당하는게 없을경우 star += ' '; 한줄을 저장하는 star 에 ' ' 여백을 추가하여 내부에 공백을 집어 넣습니다
i == 0 || i == (n-1) || j == 0 || j == (n-1)


pattern1(10);
n의 값을 10으로 하고 출력 했을때의 결과값
**********
*        *
*        *
*        *
*        *
*        *
*        *
*        *
*        *
**********
```

### 비어있는 사각형에 / 대각선 추가하기

```
void pattern2(int n) {
  for (int i = 0; i < n; i++) {
    String star = ''; // 한줄 저장
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == (n-1) || j == 0 || j == (n-1) || j + i ==  n - 1) {
        star += '*'; // * 출력
      } else {
        star += ' '; // 내부 공백
      }
    }
    print(star); // 줄 바꿈
  }
}
```
 가운대가 비어있는 사각형에 / 대각선을 추가하기 위해 pattern2(int n)라는 함수를 제작

```
5x5를 예시로 들때
*****
*  **
* * *
**  *
*****
```
/ 이 모양으로 대각선으로 *을 출력한다고 할때의 핵심은 i == 0 || i == (n-1) || j == 0 || j == (n-1) || j + i ==  (n - 1) 해당 부분이 된다 비어있는 사각형의 논리 연산 4개를 그대로 가지고 있어야 하고 i 가 1일때 j가 0,3,4일때 *을 출력하고 i 가 2일땐 j가 0,2,4에 *을 출력하기 때문에 j + i ==  (n - 1) 해당 논리식만 추가해주면 된다 예를 들어 i 가 2이고 j가 2일때 2+2 = 4가 되고 이것은 n - 1 이 4 즉 4 == 4 가 되기때문에 *을 출력한다
```
void main() {
  pattern2(10);
}
n의 값을 10으로 하고 출력 했을때의 결과값

**********
*       **
*      * *
*     *  *
*    *   *
*   *    *
*  *     *
* *      *
**       *
**********
```

### 비어있는 사각형에 \ 대각선 추가하기

```
void pattern3(int n) {
  for (int i = 0; i < n; i++) {
    String star = ''; // 한줄 저장
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == (n-1) || j == 0 || j == (n-1) || j == i) {
        star += '*'; // * 출력
      } else {
        star += ' '; // 내부 공백
      }
    }
    print(star); // 줄 바꿈
  }
}
```
가운대가 비어있는 사각형에 \ 대각선을 추가하기 위해pattern3(int n)라는 함수 제작
```
5x5 일때 예시
*****
**  *
* * *
*  **
*****
```
위와 같은 방법으로 i와 j가 0일땐 *을 출력하고 i가 1이고 j도 1일때 *이 출력되는 예시를 볼 수 있다
가운대 비워두는 조건 4가지 항목에 j == i 조건을 추가하여 i가 3일때 j도 3임으로 *이 출력이 된다

```
void main() {
  pattern3(10);
}
n의 값을 10으로 하고 출력 했을때의 결과값

**********
**       *
* *      *
*  *     *
*   *    *
*    *   *
*     *  *
*      * *
*       **
**********
```

### X 도형 그리기

```
void pattern4(int n) {
  for (int i = 0; i < n; i++) {
    String star = ''; // 한줄 저장
    for (int j = 0; j < n; j++) {
      if ((i == 0 || i == (n-1) || j == 0 || j == (n-1) || j == i || i + j == n - 1)) {
        star += '*'; // * 출력
      } else {
        star += ' '; // 내부 공백
      }
    }
    print(star); // 줄 바꿈
  }
}
```
해당 코드는 도형의 가운대를 비웠던 조건 항목에 / 일때 추가 되었던 (j + i ==  n - 1)과 \ 일때 추가 되었던 (j == i)을 추가하면 된다
```
void main() {
  pattern4(10);
}

n의 값을 10으로 하고 출력 했을때의 결과값
**********
**      **
* *    * *
*  *  *  *
*   **   *
*   **   *
*  *  *  *
* *    * *
**      **
**********
```

### 년/월/일을 가지고 요일로 출력하기
```
import 'package:intl/intl.dart'; // 날짜 포맷을 위한 intl 패키지
import 'package:intl/date_symbol_data_local.dart'; // 다국어 날짜 데이터를 로드하기 위한 패키지

void main() async {
  await initializeDateFormatting('ko_KR', null); // 한국어 날짜 데이터를 초기화

  var input = '2025-03-17';

  // 문자열에서 연도, 월, 일 숫자로 변환
  var inputYear = int.parse(input.substring(0, 4)); // "2025" → 2025
  var inputMonth = int.parse(input.substring(5, 7)); // "03" → 3 (월)
  var inputDay = int.parse(input.substring(8, 10)); // "17" → 17 (일)

  // DateTime 객체 생성 (2025년 3월 17일)
  DateTime result = DateTime(inputYear, inputMonth, inputDay);

  // 한국어 요일 포맷 적용
  String formattedDate = DateFormat('EEEE', 'ko_KR').format(result);

  print(formattedDate); // '월요일' 출력
}
```
##### intl 패키지는 날짜와 시간을 포맷하는데 사용
##### date_symbol_data_local.dart는 다국어 날짜 데이터를 로드하는데 사용
##### main에 async를 추가하여 비동기(Asynchronous) 함수로 변경
##### initializeDateFormatting('ko_KR', null); 한국어 로컬 데이터를 가져오기 위한 함수 -> 'ko_KR' : 한국어 / null : null을 넘기면 기본 내장된 로컬 데이터를 사용함

#### input 에서 년/월/일 분리 하여 각각 변ㅅ무에 저장하기
##### var inputYear = int.parse(input.substring(0, 4)); // "2025" → 2025
##### var inputMonth = int.parse(input.substring(5, 7)); // "03" → 3 (월)
##### var inputDay = int.parse(input.substring(8, 10)); // "17" → 17 (일)

#### DateTime(2025, 3, 12); → 2025년 3월 12일을 나타내는 DateTime 객체 생성
DateFormat('EEEE', 'ko_KR') → 날짜를 "월요일", "화요일" 형식으로 변환하기
