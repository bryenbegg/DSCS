<?php
class CharacterCompanion extends AppModel{
	public $belongsTo = array('CharacterSheet');
	public $hasOne = array('RaceType','RacialType');
	public $hasMany = array('CharacterEquip','CharacterArmor', 'CharacterSpell', 'CharacterTalent', 'CharacterWeapon', 'CharacterMisc','CharacterNote');
}
?>