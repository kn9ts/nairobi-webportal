<?php

global $project;
$project = 'Nairobi';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'silverstripe',
	"password" => 'root',
	"database" => 'silverstripe_ncc',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');
SSviewer::set_theme('fitimage');
FulltextSearchable::enable();
// GoogleSitemap::enable_google_notification();
Requirements::set_combined_files_enabled(false);
// Debug::log_errors_to(<logfile-name>);

// ini_set("display_errors", "Off");
// ini_set("log_errors", "On");
// ini_set("error_log", "/path/to/errorlog");