<?php
class HeroTypesController extends AppController{
	public $helpers = array('Html','Form');

	public function index(){
		$this->set('HeroTypes', $this->HeroType->find('all'));
	}
}
?>