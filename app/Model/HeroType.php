<?php
class HeroType extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
}
?>