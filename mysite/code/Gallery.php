<?php

class Gallery extends SectionPage {

	private static $allowed_children = array('GalleryAlbums');

	// Some defaults -- of it's own
    // private static $icon = "themes/fitiimage/images/icons/games.png";
	private static $description = "Will hold all of the albums available for display";
	private static $singular_name = 'Image Gallery';
	private static $plural_name = 'Image Galleries';
}

class Gallery_Controller extends Page_Controller {

}
