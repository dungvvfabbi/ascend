# encoding: UTF-8
#=============================================================================
# Contents   : Set del_flag for result
# Author     : Dung Fabbi
# Since      : 2021/03/03        1.0
#=============================================================================
require 'rubygems'
require 'date'
require 'time'
# encoding: UTF-8
#=============================================================================
# Contents   : Set del_flag for result
# Author     : Dung Fabbi
# Since      : 2021/03/04        1.0
#=============================================================================
load File.join(File.dirname(__FILE__),'common.rb')
load File.join(File.dirname(__FILE__),'config.rb')

instance =  AscConfig.new
instance.instance_eval File.read File.join(File.dirname(__FILE__),'config.ini')
config = instance.getData
############################################
#
# DBのT80
#
############################################
def updateT80(mysql_cli, start_time, end_time, time_update)
	query = <<EOS
		UPDATE t80_outgoing_results 
		SET 
			del_flag = 'Y',
			modified = '#{time_update}',
			update_program = 'Delete test number record'
		WHERE
			del_flag = 'N' AND 
				schedule_id IN (SELECT 
					t20.id
				FROM
					t20_out_schedules AS t20
						INNER JOIN
					t10_call_lists AS t10 ON t20.list_id = t10.id
						INNER JOIN
					m05_users AS m05 ON t20.entry_user = m05.user_id
				WHERE
					m05.entry_user = 'ascend'
						AND t10.list_test_flag = '1'
						AND t20.created BETWEEN '#{start_time}' AND '#{end_time}')
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	mysql_cli.query(query)
end
############################################
#
# DBのT80
#
############################################
def getRemainT80(mysql_cli)
	query = <<EOS
		SELECT tel_no, entry_user
		FROM t80_outgoing_results 
		WHERE 
			del_flag = 'N' 
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	data = Array.new()
	mysql_cli.query(query).each do | row |
		data = data + Array.new(1, row)
	end
	return data
end
############################################
#
# DBのT81
#
############################################
def updateT81(mysql_cli, start_time, end_time, time_update)
	query = <<EOS
		UPDATE t81_incoming_results 
		SET 
			del_flag = 'Y',
			modified = '#{time_update}',
			update_program = 'Delete test number record'
		WHERE
			del_flag = 'N'
				AND inbound_id IN (SELECT 
					t25.id
				FROM
					t25_inbounds AS t25
						INNER JOIN
					m05_users AS m05 ON t25.entry_user = m05.user_id
				WHERE
					m05.entry_user = 'ascend'
						AND t25.created BETWEEN '#{start_time}' AND '#{end_time}')
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	mysql_cli.query(query)
end
############################################
#
# DBのT81
#
############################################
def getRemainT81(mysql_cli)
	query = <<EOS
		SELECT tel_no
		FROM t81_incoming_results 
		WHERE 
			del_flag = 'N'
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	data = Array.new()
	mysql_cli.query(query).each do | row |
		data = data + Array.new(1, row)
	end
	return data
end
############################################
#
# DBのT800
#
############################################
def updateT800(mysql_cli, start_time, end_time, time_update)
	query = <<EOS
		UPDATE t800_sms_send_results 
		SET 
			del_flag = 'Y',
			modified = '#{time_update}',
			update_program = 'Delete test number record'
		WHERE
			del_flag = 'N' AND 
				schedule_id IN (SELECT 
					t200.id
				FROM
					t200_sms_send_schedules AS t200
						INNER JOIN
					t100_sms_send_lists AS t100 ON t200.list_id = t100.id
						INNER JOIN
					m05_users AS m05 ON t200.entry_user = m05.user_id
				WHERE
					m05.entry_user = 'ascend'
						AND t100.list_test_flag = '1'
						AND t200.created BETWEEN '#{start_time}' AND '#{end_time}')
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	mysql_cli.query(query)
end
############################################
#
# DBのT800
#
############################################
def getRemainT800(mysql_cli)
	query = <<EOS
		SELECT tel_no, entry_user
		FROM t800_sms_send_results 
		WHERE
			del_flag = 'N'
				AND tel_no IN (SELECT 
					tel_no
				FROM
					m11_exclusion_tel_numbers)
EOS
	data = Array.new()
	mysql_cli.query(query).each do | row |
		data = data + Array.new(1, row)
	end
	return data
end
############################################
#
# Send Mail
#
############################################
def sendMailInfoFinish(mysql_cli)
	message = "先月分のテスト発信番号データ除外処理が実行されましたが、以下の発信テスト番号データが残存しているので、速やかに削除をお願いします。\n"
	puts message
	arr_t80 = getRemainT80(mysql_cli)
	puts arr_t80
	if arr_t80.length() > 0
		message = message + "t80_outgoing_results: "
		arr_t80.each do | row |
			message = message + row[0] + ","
		end
		message = message[0, message.length - 1] +  "\n"
	end
	arr_t81 = getRemainT81(mysql_cli)
	if arr_t81.length() > 0
		message = message + "t81_incoming_results: "
		arr_t81.each do | row |
			message = message + row[0] + ","
		end
		message = message[0, message.length - 1] +  "\n"
	end
	arr_t800 = getRemainT800(mysql_cli)
	if arr_t800.length() > 0
		message = message + "t800_sms_send_results: "
		arr_t800.each do | row |
			message = message + row[0] + ","
		end
		message = message[0, message.length - 1]
	end
	if arr_t80.length() == 0 && arr_t81.length() == 0 && arr_t800.length() == 0
		message = "先月分のテスト発信番号データ除外処理が正常に実行されました。"
	end
	puts message
	sendMailInfo("", message)
end
############################################
#
# バッチのメイン処理
#
############################################
begin
	program_name = "[ExcludeTestTelNumbers]"
	#メール
	#DB接続情報
	@db_host  = "localhost"
	@db_user  = "root"
	@db_pass  = "123456"
	@db_name = "robot_test"

	mysql_cli=Mysql.connect("127.0.0.1", "root", "123456", "robot_test", 3306)
	time_update = Time.now.strftime("%Y-%m-%d %H:%M:%S")
	prev_month = DateTime.now.prev_month(1)
	start_time = prev_month.strftime("%Y-%m-01 00:00:00")
	end_time = Date.civil(prev_month.year, prev_month.month, -1).strftime("%Y-%m-%d 23:59:59")
	# updateT80(mysql_cli, start_time, end_time, time_update)
	# updateT81(mysql_cli, start_time, end_time, time_update)
	# updateT800(mysql_cli, start_time, end_time, time_update)
	sendMailInfoFinish(mysql_cli)
	mysql_cli.close()
rescue Exception => e
	# writeLog("err_exclude_test_tel_numbers")
	# writeLog(program_name + "エラー：テスト発信番号除外バッチ実行：失敗 - " + e.message)
	# writeLog(e.backtrace.join("\n"))
	puts e.backtrace.join("\n")
	exit 9
end