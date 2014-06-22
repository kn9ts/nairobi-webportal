<?php

class GalleryAlbums extends Page {

	// Do not allow any page under the album page, should only carry images
	private static $allowed_children = false;
	
	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Will hold a collection of images delivering a specific story";
	private static $singular_name = 'Album';
	private static $plural_name = 'Albums';

	private static $default_parent = 'Gallery';

	// Representative image of the album
	static $has_one = array(
		"AlbumCoverImage" => "Image"
	);

	// The images related to the album
	static $has_many = array(
		'Images' => 'GalleryImages'
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
        $imagesField = new GridField(
            'Image', // Field name
            'Images', // Field title
            $this->Images(), // List of all related students
            $config
        );

        // Create a tab named "Students" and add our field to it
        $fields->addFieldToTab('Root.Images', $imagesField);

		//Add background image for each blog entry
		$fields->addFieldToTab("Root.Album Cover Image", new UploadField('AlbumCoverImage',  _t("Albums.COVERIMAGE", 'Add Album Representative Image')));
        $this->extend('updateCMSFields', $fields);
        
        return $fields;
	}

}

class GalleryAlbums_Controller extends Page_Controller {

}
