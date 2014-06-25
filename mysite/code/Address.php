<?php

class Address extends DataObject{
	
	static $singular_name = 'Address'; 
	static $plural_name = 'Addresses';

	// We can use the $db array to add extra fields to the database.
	private static $db = array(
		'Name' => 'Varchar',
		'StreetAddress'=> 'Varchar',
        'MailingAddress' => 'Varchar',
        'TelephoneNo' => 'Varchar', 
        'FaxNo' => 'Varchar', 
        'EmailAddress' => 'Varchar',
        'Website' => 'Varchar'
        // 'Category' => 'Enum("Health", "Fire", "Police")'
    );

    static $has_one = array ( 
		'AddressCategory' => 'AddressCategory'
	);

	public static $summary_fields = array(
		'ID' => 'ID',
		'Name' => 'Name',
		// 'Category' => 'Category',
		'EmailAddress' => 'Email Address', 
		'TelephoneNo' => 'Phone No.'
   	);

   	public function getCMSFields() {
    	$fields = parent::getCMSFields();
    	return $fields;
  	}

}