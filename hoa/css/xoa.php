<?php
   require ('DB_driver.php');

   // tao moi doi tuong
   $DB = new DB_driver();

   //INSERT
   $DB->insert('customer', array(
     'name' => 'Nguyen van Cuong',
     'phone' => '0975176453'
   	));
   // update
   $DB->update('customer', array(
   	'name' = 'Theale-view'
   	'id=1')
   	);
   // DELETE
   $DB->remove('customer', 'id = 1');

   // GET LIST
   var_dump($DB->get_list('select * from customer'));

   // Get 1 Row
   var_dump($DB->get_row('select * from customer where id=2'))
?>