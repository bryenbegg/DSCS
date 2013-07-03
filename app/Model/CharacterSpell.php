<?php
class CharacterSpell extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
	public $hasMany = array('SpellType');
}
?>