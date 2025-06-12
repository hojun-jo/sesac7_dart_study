class Hero {
  static const maxHp = 50;
  static const minHp = 0;

  final String name;
  int _hp;

  Hero(this.name, {int hp = maxHp}) : _hp = hp;

  int get hp => _hp;

  void decreaseHp(int damage) {
    if (_hp <= minHp) {
      throw Exception('HP가 더 이상 감소할 수 없습니다.');
    }

    print('$name이/가 $damage의 피해를 입었습니다.');
    if (_hp - damage < minHp) {
      damage = _hp;
    }

    _hp -= damage;
    printCurrentHp();
  }

  void increaseHp(int heal) {
    if (_hp >= maxHp) {
      throw Exception('HP가 더 이상 증가할 수 없습니다.');
    }

    print('$name이/가 $heal의 회복을 받았습니다.');
    if (_hp + heal > maxHp) {
      heal = maxHp - _hp;
    }

    _hp += heal;
    printCurrentHp();
  }

  void printCurrentHp() {
    print('$name의 현재 HP: $_hp');
  }
}
