import 'dart:math';

//==============VARIABLES==================

int leftDiceHero = 1;
int rightDiceHero = 1;
int rightDiceMonster = 1;
int leftDiceMonster = 1;


//=========FUNCTIONS=======================

void diceRandom() {

  leftDiceHero = Random().nextInt(6) + 1;
  rightDiceHero = Random().nextInt(6) + 1;
  rightDiceMonster = Random().nextInt(6) + 1;
  leftDiceMonster = Random().nextInt(6) + 1;

}