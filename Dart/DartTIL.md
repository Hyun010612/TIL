# Dart 언어 공부하기

### Dart 언어란 Google 에서 설계하여 만든 JavaScript와 유사하지만 다른 정적 언어이다

* [예제 실습해보기](https://github.com/Hyun010612/TIL/blob/main/Dart/example.md)


### 주석

```
// 이것은 주석입니다

/*
* 이것도 주석입니다
*/

/// 이것도 주석입니다
```

### 변수

```
int a = 10; // 정수형
double b = 3.14; // 실수형
String c = 'name'; // "name";도 가능 // 문자열
bool d = true; // 참 or 거짓
num e = 10;
num f = 20.0; // 정수와 실수를 같이 쓰고자 할때 'num'
```

### 변수 - 타입 추론
```
var i = 10;			      // 추론에 의해 var는 int
var d = 10.0;			    // var는 double
var s = ‘hello’;			// var는 String
var s2 = “hello”;		  // var는 String
var b = true;			    // var는 bool
var b2 = i < 10;		  // var는 bool
var b3 = s.isEmpty;	  // var는 bool
```

### 상수 final, const
```
// 값이 한번 설정되면 바꿀 수 없는 것을 상수라고 한다
final String name = ‘name’;
// name = ‘abcd’; 에러 발생
//final 은 동작하면 값이 설정되고 const 는 컴파일 시점에서 값이 설정된다
```

### 연산자 - 산술 연산자
+ , - , * : 순서대로 더하기, 빼기, 곱하기
/ : 나누기 (double 형으로 반환)
~/ : 몫 (int 형으로 반환)
% : 나머지(int형으로 반환)

### 증감 연산자
후위 연산 : x++ / x--
전위 연산 : ++x / --x

### 비교 연산자
== : 같다
!= : 다르다
> : 크다
< : 작다
>= : 크거나 같다
<= : 작거나 같다

### 논리 연산자
&& : A && B - A와 B둘다 만족할 경우
|| : A || B - A와 B중 하나만 만족할 경우
== : 같을 경우
| : OR
!= : 다를 경우

### 타입 검사 is
is : 같은 타입이면 true, 아니면 false
is! : 같은 타입이면 false, 아니면 true

### 형변환 as
var c = 30.5; // var는 double
ind d = c as int; // 오류 발생 double -> int는 안됨

### 함수
특별한 기능을 하는 코드 묶음. 코드를 함수로 묶는 것을 모듈화 라고 한다.
```
int f(int x){
  return x + 10;
}

void main() {
  var result = f(10);
}
```

### 함수 - 익명 함수
익명 함수는 코드를 변수 값처럼 취급해 변수에 담을 수 있도록 함
```
var list = [1,2,3,4];
list.forEach(item){ // (item){...} 익명 함수
  print(item);
}
```

### 함수 - 람다식
```
(number) => number %2 == 0;

var list = [1.2.3.4];
list.forEach((item) => print(item));
```

### 함수 - 선택 매개변수
선택적으로 함수에 전달하고자 하는 매개변수의 경우 { }로 표시
```
void somthing({String name, int age}) { }

void main() {
  somthing(name:'홍길동',age:10);
somthing(name:'홍길동';
somthing(age:10);
}
```

### 분기와 반복 - if else
```
String text = ‘hello’;
if (text is int) {		// txt의 타입은 int가 아니므로 false
	print(‘정수’);
} else if (text is double) {	// txt 타입은 double이 아니므로 false
	print(‘실수’);
} else {
	print(‘정수도 실수도 아님’);
}
```

### 삼항 연산자
```
var isRainy = true;
var todo = isRainy ? ‘빨래를 하지 않는다’ : ‘빨래를 한다’;
```
위 코드와 예시로 isRainy 가 ture 임으로 todo에는 '빨래를 하지 않는다'가 대입된다

### switch case
```
enum Status {
   Uninitialized, Authenticated, Authenticating, Unauthenticated
}

var status = Status.Authenticated;
switch (status) {
   case Status.Authenticated:
      …
}

// C 계열 언어와 유사하다
```

### for
```
ar items = [‘짜장’, ‘라면’, ‘볶음밥’];
for (var i = 0; i < items.length; i++) {
	print(items[i]);
}
```

