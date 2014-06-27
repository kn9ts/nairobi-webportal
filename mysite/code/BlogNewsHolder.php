<?php

if(class_exists("BlogHolder")) {

	class BlogNewsHolder extends BlogHolder{

		private static $singular_name = 'News BlogHolder Page';
    	private static $plural_name = 'News BlogHolder Pages ';
    	private static $description = "Displays listings of blog entries only";
    	// private static $allowed_children = array('BlogEntry');
	}

	class BlogNewsHolder_controller extends BlogHolder_Controller{
		public function show() {
			$ssv = new SSViewer('Page');
			$ssv->setTemplateFile('Layout', 'BlogHolder');
			return $this->renderWith($ssv);
		}
	}

}
