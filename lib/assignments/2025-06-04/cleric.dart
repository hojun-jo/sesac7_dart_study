class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    if (mp < 5) {
      print("MP가 부족합니다. 현재 MP: $mp");
      return;
    }

    mp -= 5;
    hp = maxHp;
    print("$name의 HP가 최대로 회복되었습니다. 현재 HP: $hp, MP: $mp");
  }
}
