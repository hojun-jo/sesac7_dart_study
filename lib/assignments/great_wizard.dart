import 'package:modu_3_dart_study/assignments/hero.dart';
import 'package:modu_3_dart_study/assignments/wizard.dart';

class GreatWizard extends Wizard {
  static const maxMp = 150;
  static const healCost = 5;
  static const healAmount = 25;
  static const greatHealCost = 50;

  GreatWizard(super.name, {required super.hp, super.mp = maxMp});

  @override
  void heal(Hero hero) {
    if (mp < healCost) {
      print('마나가 부족합니다.');
      return;
    }

    hero.increaseHp(healAmount);
    mp -= healCost;
    print('힐을 시전했습니다. 대상 HP: ${hero.hp}');
  }

  void superHeal(Hero hero) {
    if (mp < greatHealCost) {
      print('마나가 부족합니다.');
      return;
    }

    hero.increaseHp(Hero.maxHp);
    mp -= greatHealCost;
    print('슈퍼 힐을 시전했습니다. 대상 HP: ${hero.hp}');
  }
}
