<?php

if(class_exists("BlogHolder")) {

	class BlogNewsHolder extends BlogHolder{

		private static $singular_name = 'News BlogHolder Page';
    	private static $plural_name = 'News BlogHolder Pages ';
    	private static $description = "Displays listings of blog entries only";
    	// private static $allowed_children = array('BlogEntry');

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

	        $fields->addFieldToTab('Root.Main', new TextField('Description'), 'Content');
	        $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'), 'Content');
	        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), 'Content');

	        // $fields->removeFieldFromTab("Root.Main", "Content");
	        // $checkboxForMiniMenu = new CheckboxField('isMiniMenu', 'Check this if it\'s a mini menu');
	        // $fields->addFieldToTab('Root.Main', $checkboxForMiniMenu, 'Content');
	        $this->extend('updateCMSFields', $fields);
	        return $fields;
	    }

	}

	class BlogNewsHolder_controller extends BlogHolder_Controller{
		public function show() {
			$ssv = new SSViewer('Page');
			$ssv->setTemplateFile('Layout', 'BlogHolder');
			return $this->renderWith($ssv);
		}
	}

}
