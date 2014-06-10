<?php

class MapsPage extends Page {
	// We can use the $db array to add extra fields to the database.
	private static $db = array(
        'Description' => 'Text', 
        "bgColor" => "Text", 
        "IconType" => "Text"
    );
    
    // Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
    private static $description = "Will hold map information";
    private static $singular_name = 'Map Page';
    private static $plural_name = 'Maps Page';

    private static $default_parent = 'Homepage';
    
    static $defaults = array(
        'bgColor' => 'green', 
        'IconType' => 'fa-bookmark'
    );

    public function populateDefaults() {
        $this->setField('bgColor', 'green');
        $this->setField('IconType', 'fa-bookmark');
        parent::populateDefaults();
    }

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new TextField('Description'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('bgColor', 'Background Color'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), 'Content');
        $fields->removeFieldFromTab("Root.Main", "Content");

        // $this->extend('updateCMSFields', $fields);
        return $fields;
    }
}

class MapsPage_Controller extends Page_Controller {

}