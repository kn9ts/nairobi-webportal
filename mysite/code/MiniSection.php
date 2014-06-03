<?php

class MiniSection extends Page {
	// We can use the $db array to add extra fields to the database.
	private static $db = array(
        'Description' => 'Text', 
        "bgColor" => "Text", 
        "IconType" => "Text"
    );

    // Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Added at the bottom of the Homepage as a miscellinious menu";
	private static $singular_name = 'Mini Section';
	private static $plural_name = 'Mini Sections';

    private static $default_parent = 'HomePage';
    
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

class MiniSection_Controller extends Page_Controller {

}