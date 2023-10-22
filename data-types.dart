void main() {
  // NOTE: 기본 데이터형
  String name = 'tester';
  bool alive = true;
  int age = 22;
  double height = 171.5;
  num x = 100; // int or double

  // NOTE: 문자열 안에 변수를 사용하는 방법. 홑따옴표 또는 쌍따옴표에 상관없이 사용가능
  var formattedString =
      'Hello, my name is $name and my age is ${age + 1} years old and my height is $height';
  print(formattedString);

  // NOTE: List 타입
  var numbers = [
    1,
    2,
    3,
    4,
  ];

  // NOTE: 아래와 같이 List 타입을 명시적으로 선언할 수 있다.
  List<int> listNumber = [
    5,
    6,
    7,
    8,
  ];

  // NOTE: 리스트 선언시 조건문을 사용할 수 있다.
  var isTrue = true;
  List<String> listString = [
    'a',
    'b',
    'c',
    'd',
    if (isTrue) 'true',
  ];

  // NOTE: 리스트 선언시 반복문을 사용할 수 있다.
  var oldFriends = ['ada', 'bryan', 'cole'];
  var newFriends = [
    'dan',
    'eddie',
    'fred',
    for (var friend in oldFriends) "🍎 $friend",
  ];
  print(newFriends);

  // NOTE: Map 타입 python의 dictionary와 비슷하다.
  var mapVar = {
    'name': 'tester',
    'age': 22,
    'height': 171.5,
    'isAlive': true,
  };
  Map<String, Object> map = {
    'name': 'tester',
    'age': 22,
    'height': 171.5,
    'isAlive': true,
  };

  // NOTE: Set 타입, Set은 중복된 값을 허용하지 않는다.
  var setVar = {1, 2, 3, 4, 5};
  setVar.add(1);
  setVar.add(1);
  setVar.add(1);
  setVar.add(1);
  print(setVar);

  print("Hello data types!");
}
