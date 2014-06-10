<?php

class HomePage extends Page {
    private static $allowed_children = array('SectionHolder', 'TenderHolder', 'EventHolder', 'MiniSection', 'GalleryPage', 'SectionPage', 'CityBylawsPage', 'MapsPage');
    // private static $icon = "themes/fitiimage/images/icons/book.png";
}

class HomePage_Controller extends Page_Controller {
	public function LatestUpdates($num = 2) {
    	$holder = BlogHolder::get()->First();
    	return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->sort('Date DESC')->limit($num) : false;	
	}
}