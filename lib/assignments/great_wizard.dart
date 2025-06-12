import 'package:modu_3_dart_study/assignments/hero.dart';
import 'package:modu_3_dart_study/assignments/wizard.dart';

class GreatWizard extends Wizard {
  static const maxMp = 150;
  static const healCost = 5;
  static const healAmount = 25;
  static const superHealCost = 50;

  GreatWizard(super.name, {required super.hp, super.mp = maxMp});

  @override
  void heal(Hero hero) {
    _heal(
      hero: hero,
      healCost: healCost,
      healAmount: healAmount,
      message: '힐을 시전했습니다. 대상 HP: ${hero.hp}',
    );
  }

  void superHeal(Hero hero) {
    _heal(
      hero: hero,
      healCost: superHealCost,
      healAmount: Hero.maxHp - hero.hp,
      message: '슈퍼 힐을 시전했습니다. 대상 HP: ${hero.hp}',
    );
  }

  void _heal({
    required Hero hero,
    required int healCost,
    required int healAmount,
    required String message,
  }) {
    if (mp < healCost) {
      print('마나가 부족합니다.');
      return;
    }

    hero.increaseHp(healAmount);
    mp -= healCost;
    print(message);
  }
}
