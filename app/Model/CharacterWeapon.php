<?php
class CharacterWeapon extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
	public $hasMany = array('WeaponType');
}
?>