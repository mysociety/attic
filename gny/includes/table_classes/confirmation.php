<?php
/**
 * Table Definition for confirmation
 */
require_once('init.php');
require_once 'DB/DataObject.php';
require_once('table_classes/stat.php');

class tableclass_confirmation extends DB_DataObject {
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'confirmation';                    // table name
    public $confirmation_id;                 // int(4)  primary_key not_null
    public $parent_table;                    // varchar(40)   not_null
    public $parent_id;                       // int(4)   not_null
    public $link_key;                        // varchar(40)   not_null
    public $argument;                     

    /* Static get */
    function staticGet($k,$v=NULL) { return DB_DataObject::staticGet('tableclass_Confirmation',$k,$v); }

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE

	public function send($to, $subject, $text, $table, $id, $argument = ''){

		//generate key etc
		$this->link_key = substr(crypt($table . $id . $argument . microtime()), 3);
		$this->link_key = str_replace(array('$','/','.'), '', $this->link_key); // remove any full stops as they look weird
		$this->parent_table = $table;
		$this->parent_id = $id;
		$this->argument = $argument;

		//save
		$this->insert();
		
		//work out url
		$url = CONFIRMATION_BASE_URL . urlencode($this->link_key);

		//Setup email text
		$smarty = new Smarty();
        $smarty->compile_dir = SMARTY_PATH;
        $smarty->compile_check = true;
        $smarty->template_dir = TEMPLATE_DIR;
		
		$smarty->assign('text',$text);
		$smarty->assign('url',$url);
		$smarty->assign('site_name', SITE_NAME);
		$smarty->assign('team_email', CONTACT_EMAIL);

        $body = $smarty->fetch(TEMPLATE_DIR . '/emails/confirmation.tpl');

		//send email
		send_text_email($to, SITE_NAME, CONFIRMATION_EMAIL, $subject, $body);
		
	}
	
}
