<?php

class AddressCategory extends Page {

	// Do not allow any page under the album page, should only carry images
    private static $allowed_children = false;

    private static $db = array(
        "Description" => "Text",
        // "IconColor" => "Text", 
        "IconType" => "Text"
    );
	
	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Will hold addresses that fall under a specific category";
	private static $singular_name = 'Address Category';
	private static $plural_name = 'Address Categories';

	private static $default_parent = 'AddressBook';

	// The addresses related to the address category
	static $has_many = array(
		'Addresses' => 'Address'
	);

    static $defaults = array(
        'IconType' => 'fa-info-circle'
    );

    public function populateDefaults() {
        // $this->setField('IconColor', 'green');
        $this->setField('IconType', 'fa-info-circle');
        parent::populateDefaults();
    }

	public function getCMSFields() {
        // Get the fields from the parent implementation
        $fields = parent::getCMSFields();   
        // Create a default configuration for the new GridField, allowing record editing
        $config = GridFieldConfig_RelationEditor::create();

        // Set the names and data for our gridfield columns
        // $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
        //     'Name' => 'Name',
        //     'AddressCategory.Title'=> 'Album' // Retrieve from a has-one relationship
        //     // Title Name of the album
        // ));

        // Create a gridfield to hold the student relationship    
        $addressList = new GridField(
            'Address', // Field name
            'Addresses', // Field title
            $this->Addresses(), // List of all related addresses
            $config
        );

        // Create a tab named "Students" and add our field to it
        $fields->addFieldToTab('Root.Address List', $addressList);

        $fields->addFieldToTab('Root.Main', new TextField('Description'), 'Content');
        // $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), 'Content');
        $fields->removeFieldFromTab("Root.Main", "Content");
        $this->extend('updateCMSFields', $fields);
        
        return $fields;
	}

}

class AddressCategory_Controller extends Page_Controller {

}
