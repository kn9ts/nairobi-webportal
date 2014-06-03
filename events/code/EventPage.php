<?php

class EventPage extends Page {
	
	private static $db = array(
		'Date' 		=> 'Date',
		'Title'		=> 'Text',
		'StartTime' => 'Time',
		'EndTime'   => 'Time'
		//'Details'	=> 'Text'
	);
	
	private static $has_one = array(
        'Photo' => 'Image'
    );
	
	private static $description = "A Single Event";
	
	public function getCMSFields(){
			$fields = parent::getCMSFields();
			//declare fields for the page
			$titleField = new TextField('Title', 'Event Title/Name');

			$dateField = new DateField('Date', 'Event Date (for example: 20/12/2010)');  //Param 1 Date == Name of //Date field as declared in the $db array
			$dateField->setConfig('showcalendar', true);
			//$dateField->setConfig('dateformat', 'dd/MM/YYYY');
			$startTime = new TimeField('StartTime', 'Start Time(for example: 10:30 AM)');
			$startTime->setConfig('timeformat', 'h:m a');
			$endTime = new TimeField('EndTime', 'End Time(for example: 3:00 PM)');
			$endTime->setConfig('timeformat', 'h:m a');
			//$detailsField = new TextareaField('Event Details');
			//$detailsField->setConfig();
			$eventPhoto = new UploadField('Photo');

			//add them fields to the tabs
			$fields->addFieldToTab('Root.Main', $titleField, 'Content');
			$fields->addFieldToTab('Root.Main', $dateField, 'Content');
			$fields->addFieldToTab('Root.Main', $startTime, 'Content');
			$fields->addFieldToTab('Root.Main', $endTime, 'Content');
			//$fields->addFieldToTab('Root.Main', $detailsField, 'Content');
			$fields->addFieldToTab('Root.Image', $eventPhoto);
			
			return $fields;
	}

}

class EventPage_Controller extends Page_Controller{

}