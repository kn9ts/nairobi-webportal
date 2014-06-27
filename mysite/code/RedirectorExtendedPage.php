<?php

if(class_exists("RedirectorPage")) {

	class RedirectorExtendedPage extends RedirectorPage{

		private static $singular_name = 'Extended Redirector Page';
    	private static $plural_name = 'Extended Redirector Pages ';
    	private static $default_parent = 'HomePage';
	}

	class RedirectorExtendedPage_controller extends RedirectorPage_Controller{
		// Leave Empty
	}

}