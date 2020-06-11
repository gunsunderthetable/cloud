<?php
class CouncillorsListPage extends Page {

    public static $db = array(
    );

    public static $has_many = array(
        "Councillors" => "Councillor"
    );  

    public function getCMSFields() {
      $fields = parent::getCMSFields();

        $gridFieldBoxConfig = GridFieldConfig::create()->addComponents(
          new GridFieldSortableRows('SortOrder'),                         
          new GridFieldToolbarHeader(),
          new GridFieldAddNewButton('toolbar-header-right'),
          new GridFieldSortableHeader(),
          new GridFieldDataColumns(),
          new GridFieldPaginator(10),
          new GridFieldEditButton(),
          new GridFieldDeleteAction(),
          new GridFieldDetailForm()
        );

        $gridField = new GridField("Councillors", "Councillors:", $this->Councillors(), $gridFieldBoxConfig);
        $fields->addFieldToTab("Root.Councillors", $gridField);                  
      
        return $fields;
    }

    public function getCouncillorsForDisplay() {
        if ($councillors=Councillor::get()->filter(array(
              'MemberOfStaff'=> 0,'CouncillorsListPageID'=>$this->ID))->sort('Name', 'ASC')) {
          return $councillors;
        } else {
          return false;
        }
    }
    public function getMembersOfStaffForDisplay() {
        if ($staff=Councillor::get()->filter(array('MemberOfStaff'=> 1,'CouncillorsListPageID'=>$this->ID))->sort('Name', 'ASC')) {
          return $staff;
        } else {
          return false;
        }
    }

}

class CouncillorsListPage_Controller extends Page_Controller {
	
}
