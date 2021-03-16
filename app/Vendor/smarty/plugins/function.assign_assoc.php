<?php

/**
 * expects $params to hold at least values for $var and $value, and optionally
 * $glue. Value should look like "key1=>value1,key2=>value2", or if $glue is
 * passed in , it will split on $glue rather than commas, useful if commas are
 * needed inside your keys or vals. Will assign the associative array that is
 * created from $value to the variable name contained in $var
 */
function smarty_function_assign_assoc($params, $template)
{
	//extracts variables passed in
	
	extract($params['value']);
    $assoc_array = array();

    if(!isset($params['value']) ||  !isset($params['var']))
    {
    	return;
    } 
    $var = $params['var'];
    $value = $params['value'];
    $glue = $params['glue'];
    
    if(!isset($glue))
    {
    	$glue = ',';
    }
    $key_val_pairs=explode($glue,$value);
    foreach($key_val_pairs as $pair){
   	   list($key,$val) = explode('=>',$pair);
   	  $assoc_array[trim($key)] = trim($val);
    }
	//var_dump($assoc_array);
	$template->assign($var,$assoc_array);
}

?>