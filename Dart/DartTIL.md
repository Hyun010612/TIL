# Dart 언어 공부하기

### Dart 언어란 Google 에서 설계하여 만든 JavaScript와 유사하지만 다른 정적 언어이다

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
var i = 10;			// 추론에 의해 var는 int
var d = 10.0;			// var는 double
var s = ‘hello’;			// var는 String
var s2 = “hello”;		// var는 String
var b = true;			// var는 bool
var b2 = i < 10;		// var는 bool
var b3 = s.isEmpty;	// var는 bool
```

### 상수 final, const
```
// 값이 한번 설정되면 바꿀 수 없는 것을 상수라고 한다
final String name = ‘name’;
// name = ‘abcd’; 에러 발생
//final 은 동작하면 값이 설정되고 const 는 컴파일 시점에서 값이 설정된다
```
