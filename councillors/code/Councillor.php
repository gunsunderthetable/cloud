<?php

	class Councillor extends DataObject{
		
		public static $db = array(
			'Title' => 'Text',
			'Name' => 'Text',
			'Forename' => 'Text',
            'Email' => 'Text',
            'Party' => 'Text',
            'Ward' => 'Text',
            'Telephone' => 'Text',
            'SpecialResonsibilities' => 'Text',
            'MemberOfStaff' => 'Boolean',
            'SortOrder'=>'Int'                        
		);
		
		public static $has_one = array(
			'CouncillorImage' => 'Image',
			'CouncillorsListPage' => 'CouncillorsListPage'
		);
                
		public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Title'),
				new TextField('Name', 'Surname'),
				new TextField('Forename', 'Forename'),
                new TextField('Email', 'Email address'),
                new CheckBoxField('MemberOfStaff', 'Is this person a member of staff?'),
				new TextField('Party', 'Party'),
				new TextField('Ward', 'Ward'),
				new TextField('Telephone', 'Telephone'),
				new TextField('SpecialResonsibilities', 'SpecialResonsibilities'),
				new UploadField('CouncillorImage', 'Image')
			);
		}
		
	}
