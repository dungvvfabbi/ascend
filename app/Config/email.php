<?php
/**
 * CakeEmailを使用してメール送信時の設定情報を定義する
 */
class EmailConfig {
	public $smtp = array(
		'tranceport' => 'Smtp',
		'from' => array('astar_report@ascend-corp.co.jp' => 'システム送信用'),
		'host' => 'smtp.office365.com',
		'port' => 587,
		'timeout' => 30,
		'username' => 'astar_report@ascend-corp.co.jp',
		'password' => 'wEkUPc&sjv4ykn%6VZyW',
		'charset' => 'utf-8',
		'headerCharset' => 'utf-8',
	);
}
