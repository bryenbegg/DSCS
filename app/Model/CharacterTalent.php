<?php
class CharacterTalent extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
	public $hasMany = array('TalentType');	
}
?>