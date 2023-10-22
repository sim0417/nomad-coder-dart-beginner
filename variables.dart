void main() {
  // NOTE: var로 초기값을 넣어주면 넣어준 값의 타입을 인식하고 다른 타입으로 재할당 될 수 없다.
  // 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때에는 var를 사용한다.
  // class 에서 변수나 property를 선언할 때에는 타입을 지정해 준다.
  var name = 'tster';

  // 변수를 명시적으로 타입을 지정해줄 수 있다.
  String stringName = 'tster';

  // NOTE: 아래처럼 var로 초기값을 입력하지 않은 경우, dynamic 타입으로 선언된다.
  // dynamic 타입은 다른 타입의 값을 할당할 수 있기 때문에 필요한 상황에서만 사용해야 한다.
  var dynamicVar;
  dynamicVar = 1;
  dynamicVar = 'tster';
  dynamicVar = true;

  dynamic dynamicVariable;
  dynamicVariable = 1;
  dynamicVariable = 'tster';
  dynamicVariable = true;

  // NOTE: dynamic 타입별로 다른 동작을 하고 싶은 경우, 아래와 같이 사용할 수 있다.
  if (dynamicVariable is String) {
    // do something
  }

  // NOTE: nullable 타입은 ?를 붙여서 사용한다.
  String? nullableString = 'this is nullable string';
  nullableString = null;

  // NOTE: final 키워드는 상수를 선언할 때 사용할 수 있다.
  final finalValue = 'this is final value';
  final String finalString = 'this is final string';

  // NOTE: late 키워드는 나중에 값을 할당할 수 있는 변수를 선언할 때 사용할 수 있다.
  late final String lateFinalString;
  // 아래 라인에선 초기값을 할당하지 않았기 때문에 에러를 발생한다.
  // print(lateFinalString);
  // 아래 라인에서 초기값을 할당한 뒤에는 final 키워드와 마찬가지로 값을 재할당할 수 없다.
  lateFinalString = 'this is late final string';

  // NOTE: const 키워드는 컴파일 타임에 상수를 선언할 때 사용할 수 있다.
  const constValue = 'this is const value';

  print("Hello Variables");
}
