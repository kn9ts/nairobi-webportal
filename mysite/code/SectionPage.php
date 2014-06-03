<?php

class SectionPage extends Page {

	private static $db = array(
		"Description" => "Text",
        "IconColor" => "Text", 
        "IconType" => "Text"
	);

	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Homepage menu icon as a path to an information section";
	private static $singular_name = 'Section Page';
	private static $plural_name = 'Section Page';

	private static $default_parent = 'SectionHolder';

    static $defaults = array(
        'IconColor' => 'grey', 
        'IconType' => 'fa-info-circle'
    );

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

class SectionPage_Controller extends Page_Controller {

}