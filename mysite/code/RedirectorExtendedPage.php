<?php

if(class_exists("RedirectorPage")) {

	class RedirectorExtendedPage extends RedirectorPage{

		private static $singular_name = 'Extended Redirector Page';
    	private static $plural_name = 'Extended Redirector Pages ';
		
		private function extraStatic() {
			return array(
	            'db' => array(
	            	"Description" => "Text",
			        "IconColor" => "Text", 
			        "IconType" => "Text"
	            ),
	            'defaults' => array(
	            	'IconColor' => 'grey', 
	        		'IconType' => 'fa-info-circle'
	            )
	        );
		}

		public function populateDefaults() {
	        $this->setField('IconColor', 'green');
	        $this->setField('IconType', 'fa-info-circle');
	        parent::populateDefaults();
	    }

	    public function getCMSFields() {
	        $fields = parent::getCMSFields();

	        $fields->addFieldToTab('Root.Main', new TextField('Description'));
	        $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'));
	        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'));

	        // $fields->removeFieldFromTab("Root.Main", "Content");
	        // $checkboxForMiniMenu = new CheckboxField('isMiniMenu', 'Check this if it\'s a mini menu');
	        // $fields->addFieldToTab('Root.Main', $checkboxForMiniMenu, 'Content');
	        $this->extend('updateCMSFields', $fields);
	        return $fields;
	    }
	}

	class RedirectorExtendedPage_controller extends RedirectorPage_Controller{
		// Leave Empty
	}

}