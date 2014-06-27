<?php

if(class_exists("RedirectorPage")) {

    class EpaymentsRedirectorPage extends RedirectorPage {

        private static $singular_name = 'Epayments Redirector Page';
        private static $plural_name = 'Epayments Redirector Page ';
        private static $default_parent = 'HomePage';
    }

    class EpaymentsRedirectorPage_Controller extends RedirectorPage_Controller {
        // Leave Empty
    }

}