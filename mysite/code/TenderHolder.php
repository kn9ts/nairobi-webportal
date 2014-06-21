<?php

class TenderHolder extends Page {

    private static $allowed_children = array('TenderPage');

    private static $db = array(
        "Description" => "Text",
        "IconColor" => "Text", 
        "IconType" => "Text"
    );

    // Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
    private static $description = "Will hold all the available tenders";
    private static $singular_name = 'Tender Holder';
    private static $plural_name = 'Tender Holders';

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

class TenderHolder_Controller extends Page_Controller {
    public function LatestUpdates($num = 2) {
        $holder = BlogHolder::get()->First();
        return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->sort('Date DESC')->limit($num) : false;   
    }

    // Get all the Tenders that have not expired
    public function getAvailableTenders() {
        $tenders = TenderPage::get()->Count();
        // BlogEntry::get()->sort('Date DESC')->limit($num);
        return $tenders > 0 ? TenderPage::get()->filter(array('EndDate:GreaterThan' => date('dd/mm/YYYY')))->sort('EndDate DESC') : false; //Filter by ID of every event and ID of it's parent
    }

    /**
     * Returns a paginated list of all pages in the site, and limits the items displayed to 4 per page.
     */
    public function PaginatedPages() {
        $list = ($this->getAvailableTenders()) ? $this->getAvailableTenders(): $this->Children();
        $paginatedItems = new PaginatedList($list, $this->request);
        $paginatedItems->setPageLength(5);
        return $paginatedItems;
    }

}

