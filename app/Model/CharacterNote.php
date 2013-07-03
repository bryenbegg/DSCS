<?php
class CharacterNote extends AppModel{
	public $belongsTo = array('CharacterSheet','CharacterCompanion');
}
?>