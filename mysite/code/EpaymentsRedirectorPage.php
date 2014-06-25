<?php

class EpaymentsRedirectorPage extends RedirectorPage {

    private static $db = array(
        "IconColor" => "Text", 
        "IconType" => "Text"
    );

    private static $singular_name = 'Epayments Redirector Page';
    private static $plural_name = 'Epayments Redirector Page ';
    private static $default_parent = 'HomePage';

    static $defaults = array(
        'IconColor' => 'grey', 
        'IconType' => 'fa-info-circle'
    );

    public function populateDefaults() {
        $this->setField('IconColor', 'green');
        $this->setField('IconType', 'fa-info-circle');
        parent::populateDefaults();
    }

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('IconColor', 'Icon Color'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('IconType', 'Icon Type'), 'Content');
        $this->extend('updateCMSFields', $fields);
        return $fields;
    }

}

class EpaymentsRedirectorPage_Controller extends RedirectorPage_Controller {
  
}
