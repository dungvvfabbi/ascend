<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.assign_option.php
 * Type:     function
 * Name:     assign
 * Purpose:  テンプート変数に値を割り当てる
 * -------------------------------------------------------------
 */
function smarty_function_assign_option($params, $template)
{
	//var_dump($params);
	$keys = array_keys($params);
    $array = array();
    $value = $params['value'];
    
    foreach($keys as $key) {
    	if($key === "var") {
    		continue;
    	}else if(strpos($key, "param") !== false) {
    		$array[] = $params[$key];
    		continue;
    	}
    	//echo $key;
    	$array[$key] = $params[$key];
    }
    
    if (isset($params['var'])) {
    	$template->assign($params['var'], $array);
    }
}
?>