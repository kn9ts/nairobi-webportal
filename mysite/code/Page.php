<?php
class Page extends SiteTree {
    private static $db = array();
    private static $has_one = array();
    
    //Adding the notifier widget
    // private static $has_one = array(
    //     "NotifierWidget" => "NotifierWidget"
    // );

    // public function getCMSFields() {
    //     $fields = parent::getCMSFields();
    //     $fields->addFieldToTab("Root.Notifier", new WidgetAreaEditor("NotifierWidget"));
    //     return $fields;
    // }
    
}

class Page_Controller extends ContentController {

    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array ('ContactForm' => true);

    public function init() {
        parent::init();
        // $ThemeDir =  $this->ThemeDir();
        // Requirements::set_write_js_to_body( true );
        // Requirements::set_combined_files_folder( $ThemeDir.'/_requirements' );
        // Requirements::combine_files(
        //  'site.css',
        //  array(
        //      $ThemeDir.'/css/site.css',
        //      $ThemeDir.'/css/application.css'
        //  )
        // );
        // Requirements::javascript( "//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" );
        // Requirements::combine_files(
        //  'site.js',
        //  array(
        //      $ThemeDir.'/javascript/libs.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/affix.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/alert.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/button.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/carousel.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/collapse.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/dropdown.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/modal.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/tooltip.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/popover.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/scrollspy.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/tab.js',
        //      $ThemeDir.'/bower_components/bootstrap/js/transition.js',
        //      $ThemeDir.'/javascript/main.js'
        //  )
        // );
    }

    public function ContactForm() {
        //Get all the sectors that are in the NewsSection
        // $sectorFields = new DropdownField('SelectedSector', 'Select Sector', BlogHolder::get()->map('ID', 'Title'));
        $sectorFields = new DropdownField('SelectedSector', 'Select Sector', 
            array(
                'NewsUpdates'=>'News/Updates',
                'Decentralization'=>'Decentralization',
                'Investigations'=>'Investigations',
                'Cooperatives'=>'Co-operatives',
                'EnvironmentForestry'=>'Environment and Forestry',
                'SocialServices'=>'Social Services',
                'Agriculture'=>'Agriculture',
                'MarketsTrade'=>'Markets and Trade',
                'PublicService'=>'Public Services Management',
                'PlanningHousing'=>'Plannning and Housing',
                'Education'=>'Educatio ',
                'Legal'=>'Legal',
                'SupplyChain'=>'Supply Chain',
                'Inspectorate'=>'Inpectorate',
                'ICT'=>'ICT Department',
                'Administration'=>'Administration',
                'Others'=>'General/Others',
            )
        );
        $sectorFields->setEmptyString('Select Sector to send enquiry');

        $fields = new FieldList(
            new TextField('Name'),
            new EmailField('EmailAddress', 'Your Email Address'),
            $sectorFields,
            new TextField('Subject'),
            new TextareaField('Message')
        );
         
        // Create actions
        $actions = new FieldList(
            new FormAction('SendEmail', 'Send')
        );
        $validate = new RequiredFields('Name', 'EmailAddress', 'Subject', 'Message');
     
        return new Form($this, 'ContactForm', $fields, $actions, $validate);
    }

    public function SendEmail($data, $form) { 
        $email = new Email(); 
          
        $email->setTo('eugenemutai@gmail.com'); 
        $email->setFrom($data['EmailAddress']);
        $email->setSubject("Enquiry Message: {$data['SelectedSector']}");
          
        $messageBody = " 
            <p><strong>Name:</strong> {$data['Name']}</p> 
            <p><strong>Message:</strong> {$data['Message']}</p> 
        "; 
        $email->setBody($messageBody); 
        $email->send();
        //return to submitted message
        // Director::redirect(Director::baseURL(). $this->URLSegment . "/?success=1");
        return array(
            'Response' => 'Thank you for your feedback.'
        );
    }

    //The function to test whether to display the Submit Text or not
    public function isEmailSent() {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }
    
}
