class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});
}
