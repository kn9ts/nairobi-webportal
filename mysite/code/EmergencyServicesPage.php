<?php

class EmergencyServicesPage extends SectionPage {

	private static $allowed_children = array('AddressCategory');

    // Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
    private static $description = "Will hold informational pages";
    private static $singular_name = 'Emergency Services Page';
    private static $plural_name = 'Emergency Services Page';

    private static $default_parent = 'Homepage';
}

class EmergencyServicesPage_Controller extends Page_Controller {

}