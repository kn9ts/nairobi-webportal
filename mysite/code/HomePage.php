<?php

class HomePage extends Page {

	// Some defaults
	private static $description = "HomePage: Mother of all pages";
    private static $allowed_children = array('SectionHolder', 'TenderHolder', 'EventHolder', 'MiniSection', 'GalleryPage', 'SectionPage', 'CityBylawsPage', 'MapsPage', 'AddressBook', 'DownloadsPage', 'RedirectorPage', 'RedirectorExtendedPage', 'BlogNewsHolder', 'CountyLawsHolder');

    // We can use the $db array to add extra fields to the database.
    private static $db = array(
        'IconType' => 'Varchar',
        'AlertColor' => 'Enum("green, orange, red, yellow, grey, blue")',
        'Message' => 'Varchar(255)',
        'GoToLink' => 'Varchar(255)', 
        'Display' => 'Enum("Display, Hidden")'
    );

    static $defaults = array(
        'AlertColor' => 'green', 
        'IconType' => 'fa-exclamation-triangle'
    );

    public function populateDefaults() {
        $this->setField('AlertColor', 'green');
        $this->setField('IconType', 'fa-exclamation-triangle');
        parent::populateDefaults();
    }

	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Notifier', new TextField('IconType', 'Icon Type'));
        $fields->addFieldToTab('Root.Notifier', 
        	new DropdownField(
                'AlertColor',
                'Alert Color',
                singleton('HomePage')->dbObject('AlertColor')->enumValues()
            )
        );
        $fields->addFieldToTab('Root.Notifier', new TextField('Message', 'Notification Message'));
        $fields->addFieldToTab('Root.Notifier', new TextField('GoToLink', 'Website Link'));
        $fields->addFieldToTab('Root.Notifier', 
        	new DropdownField(
                'Display',
                'Display Notification',
                singleton('HomePage')->dbObject('Display')->enumValues()
            )
        );
        $fields->removeFieldFromTab("Root.Main", "Content");

        $this->extend('updateCMSFields', $fields);
        return $fields;
    }

}

class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array ('ContactForm' => true);

	public function LatestUpdates($num = 2) {
    	// $holder = BlogHolder::get()->First();
    	return BlogEntry::get()->sort('Date DESC')->limit($num);	
	}
}