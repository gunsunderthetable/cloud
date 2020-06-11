<?php

    class DocumentSearchPage extends Page {
     
    }

    class DocumentSearchPage_Controller extends Page_Controller {
   
     private static $allowed_actions = array (
            'DocumentSearch',
            'results'
          );
        
        public function DocumentSearch()
      {
                $fields = new FieldList(
                    new TextField('documentQuery','')
                );

                $actions = new FieldList(
                    FormAction::create("results")->setTitle("Go")
                );

                $form = new Form($this, 'DocumentSearch', $fields, $actions);
                return $form;  
      }

      public function results($data, Form $form) {
                
            $documentQuery=$data['documentQuery'];

            $results = File::get()
                ->sort(array('Title'=>'ASC'))->filter(array('Title:PartialMatch' => $documentQuery,'ClassName' => 'File'));

              $queryCount = count($results);

              $output=array(
                      'Title' => 'Document search results',
                      'Results' => $results,
                      'Query' => $documentQuery,
                      'QueryCount' => $queryCount
              );

              return $this->owner->customise($output)->renderWith(array('DocumentSearchPage_results', 'Page'));
                    
            }
    }

