class Hero {
  static const maxHp = 50;

  final String name;
  int _hp;

  Hero(this.name, {int hp = maxHp}) : _hp = hp;

  int get hp => _hp;

  void decreaseHp(int damage) {
    if (_hp <= 0) {
      throw Exception('HP가 더 이상 감소할 수 없습니다.');
    }

    print('$name의 HP가 $damage만큼 감소했습니다.');
    if (_hp - damage < 0) {
      damage = _hp;
    }

    _hp -= damage;
    print('$name의 현재 HP: $_hp');
  }
}
