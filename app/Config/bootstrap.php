<?php
/**
 * This file is loaded automatically by the app/webroot/index.php file after core.php
 *
 * This file should load/create any application wide configuration settings, such as
 * Caching, Logging, loading additional configuration files.
 *
 * You should also use this file to include any files that provide global functions/constants
 * that your application uses.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Config
 * @since         CakePHP(tm) v 0.10.8.2117
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

// Setup a 'default' cache configuration for use in the application.
Cache::config('default', array('engine' => 'File'));

/**
 * The settings below can be used to set additional paths to models, views and controllers.
 *
 * App::build(array(
 *     'Model'                     => array('/path/to/models/', '/next/path/to/models/'),
 *     'Model/Behavior'            => array('/path/to/behaviors/', '/next/path/to/behaviors/'),
 *     'Model/Datasource'          => array('/path/to/datasources/', '/next/path/to/datasources/'),
 *     'Model/Datasource/Database' => array('/path/to/databases/', '/next/path/to/database/'),
 *     'Model/Datasource/Session'  => array('/path/to/sessions/', '/next/path/to/sessions/'),
 *     'Controller'                => array('/path/to/controllers/', '/next/path/to/controllers/'),
 *     'Controller/Component'      => array('/path/to/components/', '/next/path/to/components/'),
 *     'Controller/Component/Auth' => array('/path/to/auths/', '/next/path/to/auths/'),
 *     'Controller/Component/Acl'  => array('/path/to/acls/', '/next/path/to/acls/'),
 *     'View'                      => array('/path/to/views/', '/next/path/to/views/'),
 *     'View/Helper'               => array('/path/to/helpers/', '/next/path/to/helpers/'),
 *     'Console'                   => array('/path/to/consoles/', '/next/path/to/consoles/'),
 *     'Console/Command'           => array('/path/to/commands/', '/next/path/to/commands/'),
 *     'Console/Command/Task'      => array('/path/to/tasks/', '/next/path/to/tasks/'),
 *     'Lib'                       => array('/path/to/libs/', '/next/path/to/libs/'),
 *     'Locale'                    => array('/path/to/locales/', '/next/path/to/locales/'),
 *     'Vendor'                    => array('/path/to/vendors/', '/next/path/to/vendors/'),
 *     'Plugin'                    => array('/path/to/plugins/', '/next/path/to/plugins/'),
 * ));
 *
 */

/**
 * Custom Inflector rules, can be set to correctly pluralize or singularize table, model, controller names or whatever other
 * string is passed to the inflection functions
 *
 * Inflector::rules('singular', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 * Inflector::rules('plural', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 *
 */

/**
 * Plugins need to be loaded manually, you can either load them one by one or all of them in a single call
 * Uncomment one of the lines below, as you need. make sure you read the documentation on CakePlugin to use more
 * advanced ways of loading plugins
 *
 * CakePlugin::loadAll(); // Loads all plugins at once
 * CakePlugin::load('DebugKit'); //Loads a single plugin named DebugKit
 *
 */

/**
 * You can attach event listeners to the request lifecycle as Dispatcher Filter . By Default CakePHP bundles two filters:
 *
 * - AssetDispatcher filter will serve your asset files (css, images, js, etc) from your themes and plugins
 * - CacheDispatcher filter will read the Cache.check configure variable and try to serve cached content generated from controllers
 *
 * Feel free to remove or add filters as you see fit for your application. A few examples:
 *
 * Configure::write('Dispatcher.filters', array(
 *		'MyCacheFilter', //  will use MyCacheFilter class from the Routing/Filter package in your app.
 *		'MyPlugin.MyFilter', // will use MyFilter class from the Routing/Filter package in MyPlugin plugin.
 * 		array('callable' => $aFunction, 'on' => 'before', 'priority' => 9), // A valid PHP callback type to be called on beforeDispatch
 *		array('callable' => $anotherMethod, 'on' => 'after'), // A valid PHP callback type to be called on afterDispatch
 *
 * ));
 */
Configure::write('Dispatcher.filters', array(
	'AssetDispatcher',
	'CacheDispatcher'
));

/**
 * Configures default file logging options
 */
App::uses('CakeLog', 'Log');
CakeLog::config('debug', array(
	'engine' => 'File',
	'types' => array('notice', 'info', 'debug'),
	'file' => 'debug',
));
CakeLog::config('error', array(
	'engine' => 'File',
	'types' => array('warning', 'error', 'critical', 'alert', 'emergency'),
	'file' => 'error',
));

//Files Upload Dir
define('UPLOAD_FOLDER', '/app/webroot/fileuploads/');

//Status of schedule
define('STATUS_NO_CALL', 0);
define('STATUS_CALLING', 1);
define('STATUS_STOP_CALL', 2);
define('STATUS_TEMP_FINISH', 3);
define('STATUS_FINISH', 4);
define('STATUS_STOPING', 5);
define('STATUS_FINISHING', 6);
define('STATUS_REDIAL_WAIT', 7);

//Define question type
define('QUESTION_VOICE', 1);//再生
define('QUESTION_BASIC', 2);//質問 タイム後有
define('QUESTION_AUTH', 3);//数値認証 タイム後有 //QUESTION_AUTH_NUMBER
define('QUESTION_TEL', 4);//番号入力 タイム後有
define('QUESTION_TRANS', 5);//転送
define('QUESTION_RECORD', 6);//録音 タイム後有
define('QUESTION_COUNT', 7);//カウント
define('QUESTION_END', 8);//切断
define('QUESTION_TIMEOUT', 9);//タイムアウト
define('QUESTION_AUTH_CHAR', 10);//文字列認証 タイム後有
define('QUESTION_PROPERTY', 11);//物件番号入力 タイム後有
define('QUESTION_FAX', 12);//FAX番号入力 タイム後有
define('QUESTION_SMS', 13);//SMS タイム後有
define('QUESTION_PROPERTY_SEARCH', 14);//物件入力(賃料、平米)
define('QUESTION_INBOUND_SMS', 16);//通知番号SMS送信
define('QUESTION_INBOUND_COLLATION', 17);//着信番号照合
define('QUESTION_INBOUND_SMS_INPUT', 18);//番号指定SMS

//Type of Server
define('SERVER_INBOUND', 0);
define('SERVER_OUTBOUND', 1);

//Type of Template
define('TEMPLATE_INBOUND', 0);
define('TEMPLATE_OUTBOUND', 1);

//Login failure times
define('LOGIN_FAILURE_LIMIT', 5);

//Config page size
define('PAGE_LENGTH', 20);

//Status of inbound schedule
define('STATUS_INBOUND_MESSAGE', 0);
define('STATUS_INBOUND_BUSY', 1);
define('STATUS_INBOUND_END', 2);

//Status of SMS Schedule
define('STATUS_NO_SEND', 0);
define('STATUS_SENDING', 1);
define('STATUS_STOP_SEND', 2);
define('STATUS_RESEND_WAIT', 7);

//Status sms t83_outgoing_sms_statuses
define('OUTGOING_SMS_STATUS_SUCCESS', 'success');
define('OUTGOING_SMS_STATUS_OUTSIDE', 'outside');
define('OUTGOING_SMS_STATUS_UNKNOWN', 'unknown');
define('OUTGOING_SMS_STATUS_ERROR', 'fail');
define('OUTGOING_SMS_STATUS_SENDING', 'sending');
define('OUTGOING_SMS_STATUS_NO_SEND', 'no_send');

//Status sms t86_inbound_sms_statuses
define('INBOUND_SMS_STATUS_SUCCESS', 'success');
define('INBOUND_SMS_STATUS_OUTSIDE', 'outside');
define('INBOUND_SMS_STATUS_UNKNOWN', 'unknown');
define('INBOUND_SMS_STATUS_ERROR', 'fail');
define('INBOUND_SMS_STATUS_SENDING', 'sending');
define('INBOUND_SMS_STATUS_NO_SEND', 'no_send');

define('MAX_LEN_SMS_CONTENT', 70);
define('SMS_URL_DUMMY_STRING', "1234567890123456789012");
define('SMS_URL_DUMMY_KAIGYOU_STRING', "12");
define('SMS_URL_PATTERN_KAIGYOU_REGEX', "/([\n\r\f])/");
define('SMS_API_V2_STRING', "api_v2");
define('SMS_API_V1_STRING', "api_v1");
define('SMS_API_V2_VALUE', "2");
define('SMS_API_V2_AFTER_TELL_STRING', "(API_V2)");
define('SMS_SHORT_URL_ALLOW_FLAG', "1");

define('SMS_URL_PATTERN_REGEX', '/(https?:[^ \n\r\f]+)/');
define('SMS_URL_NG_PATTERN_REGEX', '/([%|\^|\\\\|\`|\[|\{|\}|\]])/');
define('SMS_URL_NG_PATTERN_ZENKAKU_REGEX', '/　/');

// 短縮URLを考慮しない最大のURL本文
define('SMS_URL_PATTERN_MAX_CONTENT', 300);

//登録済のスケジュールを即時発信する場合の送信制御時間（分）
define('SCHEDULE_SETTING_INTERVAL', 5.0);

//登録済のスケジュールを更新もしくは削除する場合の送信制御時間（分）
define('SCHEDULE_UPDATE_DELETE_SETTING_INTERVAL', 2.0);

// error log dir
define('ERROR_LOG_DIR', ROOT. DS . APP_DIR . '/tmp/logs/');

config('message');
