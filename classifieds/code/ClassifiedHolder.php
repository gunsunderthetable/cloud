<?php

	class ClassifiedHolder extends Page{
		public static $db = array(
                    "DaysToShow" => "Int"			
		);
		
		public static $has_many = array(
			"Classifieds" => "Classified"
		);
		
		//public static $icon = "classifieds/images/classifiedholder";
		
		function getCMSFields()
		{
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

            $gridField = new GridField("Classifieds", "Classifieds:", $this->Classifieds(), $gridFieldBoxConfig);
            $fields->addFieldToTab("Root.Classifieds", $gridField);                         
			return $fields;
		}
                
		// public function getCustomClassifieds()
		// {
		// 	$limit = $this->AdvertsPerPage;
		// 	$start = isset($_GET['start']) ? (int) $_GET['start'] : 0;
		// 	$sort = "DatePublished DESC";
		// 	$where = $this->DaysToShow ? "(TO_DAYS(NOW()) - TO_DAYS(DatePublished)) <= " . $this->DaysToShow : "";
		// 	$set = $this->getComponents('Classifieds', $where, $sort, "", "$start, $limit");
		// 	return $set;
  //               }
                

			
	}
	
	class ClassifiedHolder_Controller extends Page_Controller{
		
	}
