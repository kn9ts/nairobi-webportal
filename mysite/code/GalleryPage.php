<?php

class GalleryPage extends Page {

	// We can use the $db array to add extra fields to the database.
	private static $db = array(
        'Description' => 'Text',
        "bgColor" => "Text", 
        "IconType" => "Text"
    );

    static $has_one = array ( 
		'Folder' => 'Folder'
	);

	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Create an image gallery with this page type";
	private static $singular_name = 'Gallery Page';
	private static $plural_name = 'Gallery Pages';

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
        // Select which folder to get images from
        $fields->addFieldToTab('Root.Main', new TreeDropdownField('FolderID', 'Choose Image Folder', 'Folder'), 'Content');
        $fields->removeFieldFromTab("Root.Main", "Content");
        // $this->extend('updateCMSFields', $fields);
        return $fields;
    }

	function getFitimagePhotos() { 
		$folder = GalleryPage::get()->first(); // Get the folder selected by the user in CMS
		$galleryImages = DataObject::get("Image")->filter(array("ParentID" => "{$folder->FolderID}")); //->limit(20); //729
        Debug::show($folder); 
        // return $galleryImages;
	}

}

class GalleryPage_Controller extends Page_Controller {
	// function init() {
	// 	parent::init();
	// 	Requirements::themedCSS("gallery_page");
	// }
}