<?php

class DocumentDownload extends DataObject{
	
	static $singular_name = 'Download'; 
	static $plural_name = 'Downloads';

	// We can use the $db array to add extra fields to the database.
	private static $db = array(
		'Title' => 'Varchar'
    );

    static $has_one = array ( 
		'DownloadsPage' => 'DownloadsPage',
		// 'TenderPage', => 'TenderPage', 
		'Document' => 'File'
	);

	public static $summary_fields = array(
		'ID' => 'ID',
		'Title' => 'File Name', 
		'Document.Size' => 'File Size', 
		'Document.FileType' => 'Type'
   	);

   	public function getCMSFields() {
    	$fields = parent::getCMSFields();
        $Document = new UploadField('Document', 'Upload Document');
        $Document->setAllowedFileCategories('doc'); //allow only the attachments of documents
        $Document->setFolderName('Documents');
        // $fields->replaceField('Document', $Document);
        $fields->addFieldToTab("Root.Main", $Document);
        // $fields->removeFieldFromTab("Root.Main", 'TenderPage');
    	return $fields;
  	}

  	public function getSize() {
     	return $this->Document->getSize();
  	}

}