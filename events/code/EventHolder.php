<?php

class EventHolder extends Page{
	private static $allowed_children = array("EventPage");
	private static $description  =  "A collection of all the Events";

	private static $db = array(
        "Description" => "Text",
        "IconColor" => "Text", 
        "IconType" => "Text"
    );

	/*private static $db = array(
		'Title'		=> 'Text'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$titleField   = new TextField('Title');
		$fields->addFieldToTab('Root.Main', $titleField, 'Content');
		return $fields;
	}*/

	private static $default_parent = 'Homepage';

    static $defaults = array(
        'IconColor' => 'grey', 
        'IconType' => 'fa-files-o'
    );

    public function populateDefaults() {
        $this->setField('IconColor', 'green');
        $this->setField('IconType', 'fa-info-circle');
        parent::populateDefaults();
    }

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', new TextField('Description'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), 'Content');

        $fields->removeFieldFromTab("Root.Main", "Content");
        // $checkboxForMiniMenu = new CheckboxField('isMiniMenu', 'Check this if it\'s a mini menu');
        // $fields->addFieldToTab('Root.Main', $checkboxForMiniMenu, 'Content');
        $this->extend('updateCMSFields', $fields);
        return $fields;
    }

}

class EventHolder_Controller extends Page_Controller {
	
	function echoSomething(){
		$mystr = "A method in the controller ... EventPage_Controller ";
		return $mystr;
	}

	public function getEvents($num=5) {
		$holder = EventHolder::get()->First();
		return ($holder) ? EventPage::get()->sort('Date DESC')->limit($num) : false; //Filter by ID of every event and ID of it's parent
	}

	/*
		public function GetEvents($num=5) {
			$holder = EventHolder::get()->First();
			return ($holder) ? 
				EventPage::get()->filter('ParentID', $holder->ID)->sort('Date DESC')->limit($num) : 
					false;
					//Filter by ID of every event and ID of it's parent 
		}

	*/

	public function getAllEvents(){
		$holder = EventHolder::get()->First(); //To verify if there is any events
		return ($holder)? EventPage::get()->sort('Date DESC') : false;
	}

	// public function init(){
	// 	$dir = basename(dirname(__FILE__));
	// 	// if($dir == "code") {
	//  	Requirements::css("events/css/calendar_layout.css");
	//  	//Requirements::block("themes/simple/css/typography.css"); //why is this not blocking just the file in this dir only??
	// 	// }

	// 	//Requirements::javascriptTemplate("county_events/javascript/myscript.js", $Date);
	// 	/*Requirements::customScript(<<<JS
 	//			alert("hi there"); 
	// 	JS
	// 	);*/

	// 	parent::init();  
	// }

	function customScript(){
		$allevents = $this->getAllEvents();
		//for($i=0; $<) 
		$elem = $allevents[0];
		return $elem;
	} 

	/**
	  * Pagination function
	  *
	  */
	public function PaginatedPages() {
		$paginatedItems = new PaginatedList($this->Children(), $this->request);
		$paginatedItems->setPageLength(4);
    	return $paginatedItems;
	}

	public function LatestUpdates($num = 2) {
    	$holder = BlogHolder::get()->First();
    	return ($holder) ? BlogEntry::get()->sort('Date DESC')->limit($num) : false;	
	}

}