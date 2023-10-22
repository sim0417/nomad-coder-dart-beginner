// NOTE: 함수선언 방법
// [반환할 타입] [함수명](파라미터)
void printHello(String name) {
  print("Hello $name");
}

// NOTE: => 기호를 사용해서 함수를 한줄로 표현할 수 있다.
String getHello(String name) => "Hello $name";

num PlusNumbers(num a, num b) => a + b;

// NOTE: positional parameter
String joinWithCommas(String a, String b, String c) => "$a, $b, $c";

// NOTE: optional positional parameter
String joinWithCommasWithDefaultValue(String a, String b, [String c = '']) =>
    "$a, $b ${c.isEmpty ? '' : ', $c'}";

// NOTE: named parameter
String joinWithCommasWithNamedParameter(
        {String a = '', String b = '', String c = ''}) =>
    "$a, $b, $c";

// NOTE: required 문법을 사용하여 필수 파라미터를 지정할 수 있다.
String combinNameAndAgeString({
  required String name,
  required int age,
}) =>
    "name : $name, age : $age";

// NOTE: QQ operator를 사용하여 null check를 할 수 있다.
String capitalizeName(String? name) => name?.toUpperCase() ?? '';

// NOTE: typedef를 사용하여 함수의 타입을 지정할 수 있다.
typedef ListOfInt = List<int>;
ListOfInt reverseList(ListOfInt list) {
  var reversedList = list.reversed.toList();
  return reversedList;
}

List<String> getFriends() {
  var oldFriends = ['ada', 'bryan', 'cole'];
  var newFriends = [
    'dan',
    'eddie',
    'fred',
    for (var friend in oldFriends) "🍎 $friend",
  ];
  return newFriends;
}

void main() {
  printHello("tester");

  print(getHello("tester"));

  print("plus numbers: ${PlusNumbers(1, 2)}");

  print(joinWithCommas("a", "b", "c"));

  print(joinWithCommasWithDefaultValue("a", "b"));

  print(joinWithCommasWithNamedParameter(a: "a", b: "b", c: "c"));

  print(combinNameAndAgeString(name: 'tester', age: 100));

  var friends = getFriends();
  for (var friend in friends) {
    printHello(friend);
  }

  // NOTE: ??= operator를 사용하여 null일 경우에만 값을 할당할 수 있다.
  String? nullableString;
  nullableString ??= 'this is nullable string';
  print('nullableString: $nullableString');
  // null이 아닐 경우에는 값을 할당하지 않는다.
  nullableString ??= 'this is new nullable string';
  print('nullableString: $nullableString'); // this is nullable string

  print(reverseList([1, 2, 3, 4]));

  print("Hello Functions");
}
