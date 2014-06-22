<?php

//Holds a collection of addresses
class AddressBook extends SectionPage {

    private static $allowed_children = array('AddressCategory');
	
	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Will hold a collection of addresses";
	private static $singular_name = 'Address Book';
	private static $plural_name = 'Address Books';
}

class AddressBook_Controller extends Page_Controller {

}
