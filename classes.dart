// NOTE: 추상화 클래스를 사용하여 인터페이스를 구현할 수 있다.
abstract class Human {
  void Walk();
}

// NOTE: enum을 사용하여 타입을 지정할 수 있다.
enum Team {
  Red,
  Blue,
  Yellow,
}

class Player extends Human {
  String name;
  int age = 1;
  Team team;
  int point;

  // NOTE: 생성자에서 this 키워드를 사용하여 파라미터를 받아서 변수에 할당할 수 있다.
  Player({
    required this.name,
    required this.age,
    required this.team,
    this.point = 0,
  });
  // 아래처럼 초기화 할수도 있다.
  // Player(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // NOTE: 생성자의 이름을 부여하여 다르게 생성할 수 있다.
  Player.makeBlueTeam({
    required this.name,
    required this.age,
    this.point = 0,
  }) : team = Team.Blue;

  Player.makeRedTeam({
    required this.name,
    required this.age,
    this.point = 0,
  }) : team = Team.Red;

  Player.parseJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        team = json['team'] == 'Red'
            ? Team.Red
            : json['team'] == 'Blue'
                ? Team.Blue
                : Team.Yellow,
        point = json['point'];

  void printName() {
    print('name: $name');
  }

  void Walk() {
    print('i am walking...');
  }
}

// NOTE: mixin을 사용하여 다중 상속을 구현할 수 있다.
mixin PowerOfThunder {
  int power = 100;

  void Thunder() {
    print('Thunder!');
  }
}

mixin SuperFast {
  int speed = 100;

  void Run() {
    print('Ruuuuuuuuuuuuuuuuuun!');
  }
}

mixin EyeLaser {
  int power = 100;
  void Laser() {
    print('Laser!');
  }
}

mixin ImmuneOfPhysicalAttack {
  int defense = 100;
  void Defence() {
    print('Defence!');
  }
}

class SuperPlayer extends Player
    with PowerOfThunder, SuperFast, EyeLaser, ImmuneOfPhysicalAttack {
  SuperPlayer({
    required String name,
    required int age,
    required Team team,
    required int point,
  }) : super(
          name: name,
          age: age,
          team: team,
          point: point,
        );
}

class Vehicle {
  String modelName;

  Vehicle({
    required this.modelName,
  });

  void Drive() {
    print('i am driving $modelName');
  }
}

// NOTE: extends 키워드를 사용하여 상속받을 수 있다. 생성자에서 super 키워드를 사용하여 부모 클래스의 생성자를 호출할 수 있다.
class Jeep extends Vehicle {
  int durability;
  String color;

  Jeep({
    required this.durability,
    required this.color,
    required String modelName,
  }) : super(
          modelName: modelName,
        );

  // NOTE: override 키워드를 사용하여 부모 클래스의 메소드를 오버라이드 할 수 있다.
  @override
  void Drive() {
    super.Drive();
    print('and my color is $color');
  }

  void printDurability() {
    print('durability: $durability');
  }
}

void main() {
  var player1 = Player(
    name: 'nick',
    age: 22,
    team: Team.Red,
    point: 100,
  );
  player1.printName();

  var player2 = Player(
    name: 'jane',
    age: 22,
    team: Team.Blue,
    point: 10,
  );
  player2.printName();

  var redPlayer = Player.makeRedTeam(
    name: 'fire',
    age: 22,
    point: 100,
  );
  redPlayer.printName();

  var bluePlayer = Player.makeBlueTeam(
    name: 'water',
    age: 22,
    point: 10,
  );
  bluePlayer.printName();

  var playerJsonDatas = [
    {
      'name': 'adi',
      'age': 22,
      'team': 'Red',
      'point': 100,
    },
    {
      'name': 'bran',
      'age': 22,
      'team': 'Blue',
      'point': 10,
    },
    {
      'name': 'chris',
      'age': 22,
      'team': 'Red',
      'point': 100,
    },
    {
      'name': 'dlyan',
      'age': 22,
      'team': 'Blue',
      'point': 10,
    },
  ];

  for (var playerJsonData in playerJsonDatas) {
    var player = Player.parseJson(playerJsonData);
    player.printName();
  }

  // NOTE: cascade operator를 사용하여 동일한 객체에 여러 메소드를 호출할 수 있다.
  var playerSemi = Player(
    name: 'semi',
    age: 22,
    team: Team.Red,
  )
    ..name = 'new semi'
    ..age = 23
    ..team = Team.Yellow
    ..printName();

  var superman = SuperPlayer(
    name: 'clark',
    age: 10000,
    team: Team.Yellow,
    point: 10000000,
  )
    ..printName()
    ..Thunder()
    ..Run();

  print('Hello Classes !');
}
