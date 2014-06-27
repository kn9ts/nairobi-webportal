<?php

if(class_exists("SectionHolder")) {

	class CountyLawsHolder extends SectionHolder{
		// Some defaults
	private static $title = "County Laws Holder Page"; 
	private static $description = "County Laws Holder :- Holds the three sub-sections of county laws";

		private function extraStatic() {
			return array(
	            'db' => array(
	            	"Description" => "Text",
			        "IconColor" => "Text", 
			        "IconType" => "Text",
					"WYSIWYGEditor" => "HTMLText"
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

			/* $fields->addFieldToTab("Root.Content.LawsContent", new HTMLEditorField('WYSIWYGEditor', 'Content'));  */
			$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('WYSIWYGEditor', 'Content')); 
			/* $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('TeaserText'), 'Content'); */
	        // $checkboxForMiniMenu = new CheckboxField('isMiniMenu', 'Check this if it\'s a mini menu');
	        // $fields->addFieldToTab('Root.Main', $checkboxForMiniMenu, 'Content');
	        $this->extend('updateCMSFields', $fields);
	        return $fields;
	    }

	}

	class CountyLawsHolder_controller extends SectionHolder_Controller{

	}

}
