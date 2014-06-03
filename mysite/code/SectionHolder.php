<?php

class SectionHolder extends Page {

	private static $allowed_children = array('SectionPage', 'BlogTree', 'BlogHolder', 'BlogEntry', 'GalleryPage', 'TenderPage');

    private static $db = array(
		"Description" => "Text",
        "IconColor" => "Text", 
        "IconType" => "Text"
	);

	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Homepage menu icon as a path to information sections";
	private static $singular_name = 'Section Holder';
	private static $plural_name = 'Section Holders';

	private static $default_parent = 'Homepage';

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

        $fields->removeFieldFromTab("Root.Main", "Content");
        // $checkboxForMiniMenu = new CheckboxField('isMiniMenu', 'Check this if it\'s a mini menu');
        // $fields->addFieldToTab('Root.Main', $checkboxForMiniMenu, 'Content');
        $this->extend('updateCMSFields', $fields);
        return $fields;
    }
}

class SectionHolder_Controller extends Page_Controller {

}