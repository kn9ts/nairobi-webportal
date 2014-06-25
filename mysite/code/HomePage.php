<?php

class HomePage extends Page {
<<<<<<< HEAD
    private static $allowed_children = array('SectionHolder', 'TenderHolder', 'EventHolder', 'MiniSection', 'GalleryPage', 'SectionPage', 'CityBylawsPage', 'MapsPage', 'AddressBook', 'DownloadsPage','RedirectorPage');
=======
    private static $allowed_children = array('SectionHolder', 'TenderHolder', 'EventHolder', 'MiniSection', 'GalleryPage', 'SectionPage', 'CityBylawsPage', 'MapsPage', 'AddressBook', 'DownloadsPage');
>>>>>>> 136832e4a196dbcd9783e1c7f44776dfb1a7c684
    // private static $icon = "themes/fitiimage/images/icons/book.png";
}

class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array ('ContactForm' => true);

	public function LatestUpdates($num = 2) {
    	// $holder = BlogHolder::get()->First();
    	return BlogEntry::get()->sort('Date DESC')->limit($num);	
	}
}