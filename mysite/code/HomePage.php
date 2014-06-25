<?php

class HomePage extends Page {
    private static $allowed_children = array('SectionHolder', 'TenderHolder', 'EventHolder', 'MiniSection', 'GalleryPage', 'SectionPage', 'CityBylawsPage', 'MapsPage', 'AddressBook', 'DownloadsPage','RedirectorPage');
    // private static $icon = "themes/fitiimage/images/icons/book.png";
}

class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array ('ContactForm' => true);

	public function LatestUpdates($num = 2) {
    	// $holder = BlogHolder::get()->First();
    	return BlogEntry::get()->sort('Date DESC')->limit($num);	
	}
}