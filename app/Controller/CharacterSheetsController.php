<?php
class CharacterSheetsController extends AppController{
	public $helpers = array('Html','Form');

	public function index($id){
		$checkSheet = $id;
		$this->set('CharSheets', $this->CharacterSheet->find('all', array('conditions' => array('CharacterSheet.id' => $id))));
	}
}
?>