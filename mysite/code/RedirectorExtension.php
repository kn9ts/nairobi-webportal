<?php	

class RedirectorExtension extends DataExtension{

	private static $db = array(
		"Description" => "Text",
        "IconColor" => "Text", 
        "IconType" => "Text"
	);

    static $defaults = array(
        'IconColor' => 'grey', 
        'IconType' => 'fa-info-circle'
    );

    // public function populateDefaults() {
    //     $this->setField('IconColor', 'green');
    //     $this->setField('IconType', 'fa-info-circle');
    //     parent::populateDefaults();
    // }

	public function updateCMSFields(FieldList $fields) {
        // $fields = parent::getCMSFields();
        $contentExists = $fields->hasField('Content') == true ? 'Content': null;
        $fields->addFieldToTab('Root.Main', new TextField('Description'), $contentExists);
        $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'), $contentExists);
        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), $contentExists);
        // $this->extend('updateCMSFields', $fields);
        // return $fields;
    }

    // public function getCMSFields() {
    //     $this->beforeUpdateCMSFields(function($fields) {
    //         // Include field which must be present when updateCMSFields is called on extensions
    //         $fields->addFieldToTab('Root.Main', new TextField('Description'));
    //         $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'));
    //         $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'));
    //     });
    //     $fields = parent::getCMSFields();
    //     // ... additional fields here
    //     return $fields;
    // }

}