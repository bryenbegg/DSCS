<?php
class CharacterSheet extends AppModel{
	public $belongsTo = array('RaceType','HeroType');
	public $hasMany = array('CharacterCompanion', 'CharacterEquip','CharacterArmor', 'CharacterSpell', 'CharacterTalent', 'CharacterPp', 'CharacterWeapon', 'CharacterMisc','CharacterNote');
}
?>