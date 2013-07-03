<?php
class RaceType extends AppModel{
	//public $belongsTo = array('CharacterSheet','CharacterCompanion');
	public $hasMany = 'RaceRacialRelation';
}
?>