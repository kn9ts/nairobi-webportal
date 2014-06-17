<?php

class Images extends DataObject{
	
	static $singular_name = 'Image'; 
	static $plural_name = 'Images';

	// We can use the $db array to add extra fields to the database.
	private static $db = array(
		'Title'=>'Varchar',
        'Description' => 'Text'
        // 'DateUploaded' => 'Date'
    );

    static $has_one = array ( 
		'Image' => 'Image',
		'Album' => 'Albums'
	);

	public static $summary_fields = array(
		'Thumbnail' => 'Thumbnail',
		'Title' => 'Title',
		'Description' => 'Description.LimitWordCountXML',
	    'ID' => 'ID'
   	);

   	public function getCMSFields() {
    	$fields = parent::getCMSFields();
    	$fields->removeFieldFromTab("Root.Images", "DateUploaded");
    	return $fields;
  	}

   	public function getThumbnail() {
     	return $this->Image()->SetWidth(80);
  	}
	// See more at: http://blog.arvixe.com/silverstripe-3-1-gallery-using-gridfield/#sthash.hUcihujX.dpuf

	public function getTrancuatedDescription() {
     	return $this->Description()->LimitWordCountXML();
  	}

}