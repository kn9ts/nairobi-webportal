<?php

class DownloadsPage extends MiniSection {

	// Do not allow any page under the album page, should only carry images
	private static $allowed_children = false;
	
	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Will hold all documents uploaded for downloads";
	private static $singular_name = 'Download Page';
	private static $plural_name = 'Downloads Page';

	// The images related to the album
	static $has_many = array(
		'Downloads' => 'DocumentDownload'
	);

	public function getCMSFields() {
        // Get the fields from the parent implementation
        $fields = parent::getCMSFields();   
        // Create a default configuration for the new GridField, allowing record editing
        $config = GridFieldConfig_RelationEditor::create();

        // Set the names and data for our gridfield columns
        // $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
        //     'Name' => 'Name',
        //     'Albums.Title'=> 'Album' // Retrieve from a has-one relationship
        //     // Title Name of the album
        // ));

        // Create a gridfield to hold the student relationship    
        $DownloadsList = new GridField(
            'Downloads', // Field name
            'Downloads', // Field title
            $this->Downloads(), // List of all related students
            $config
        );

        // Create a tab named "Students" and add our field to it
        $fields->addFieldToTab('Root.Downloads', $DownloadsList);
        $this->extend('updateCMSFields', $fields);
        
        return $fields;
	}

}

class DownloadsPage_Controller extends MiniSection_Controller {

}
