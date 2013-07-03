<?php
class CharacterEquip extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
	public $hasMany = array('CharacterArmor', 'CharacterWeapon', 'CharacterMisc');
}
?>