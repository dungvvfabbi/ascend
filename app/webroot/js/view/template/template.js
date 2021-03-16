var glb_arr_ques = new Object();
var glb_arr_ques_del = new Array();
var originalContent;
var originalQuestion;
$(document).ready(function() {
	$(document).on('keydown mouseup keyup keypress blur change', '#smsBodyContent', function() {
		fillSMSBodyCount();
	});
	{
		$('.alert .close').on('click', function(e) {
			$(this).parent().hide();
			$(this).parent().find("p").remove();
		});
		$("#TemplateForm").validate({
			ignore: "",
			invalidHandler: function(form, validator) {
	            var errors = validator.numberOfInvalids();
	            if (errors) {
	                var firstInvalidElement = $(validator.errorList[0].element);
	                var id_error = $(firstInvalidElement).attr("name") + "-error";
	                if (firstInvalidElement.css("display") == "none") {
	                	firstInvalidElement.css("display","block");
	                	firstInvalidElement.focus();
	                	firstInvalidElement.css("display","none");
	            	}else {
	            		firstInvalidElement.focus();
	            	}
	            }
	        },
			rules: {
				"data[T30Template][template_name]": {
					required: true,
					existTemplateName: true,
				},
			},
			messages: {
				"data[T30Template][template_name]": {
					required: "テンプレート名を入力してください。",
					existTemplateName: "指定したテンプレート名は既に使用されています。",
				},
			},
			//errorLabelContainer : "#messageBox",
			showErrors: function(errorMap, errorList) {
				if (errorList.length > 0) {
					$('#template-error-message').find("p").remove();

					$.each(errorList, function(index, val) {
						$('#template-error-message').append('<p>' + val.message + '</p>');
					});
					$('#template-error-message').show();
				} else {
					$('#template-error-message').hide();
				}
			}
		});
		originalContent = $("#form_add_call_list").html();
		originalQuestion = $("#add_ques").html();
		$("#dialog").on("show.bs.modal", function (e) {
		});
		$("#dialog").on("hide.bs.modal", function (e) {
    		$("#audio-player").find("audio").trigger("pause");
    		$("#audio-player").find("audio").attr("src","");
			$("#form_add_call_list").html(originalContent);
			$("#form_add_call_list")[0].reset();

		});
		//質問配置
		$(".template").sortable({
			cancel: ".item-disabled",
			handle: ".btnMove",
			update: function(event, ui) {
		        var lis = $(this).parent().find('.row_question');
		        var temp_glb = $.extend(true, {}, glb_arr_ques);
		        glb_arr_ques = new Array();
		        lis.each(function(index) {
		            var temp = temp_glb[$(this).find('.hdQuesNo').val()];
		            glb_arr_ques[index + 1] = temp;
		            $(this).find('.hdQuesNo').val(index + 1);
		        });
		        updateQuesNo();
				renderSelectJumpQues();
		        // console.log(glb_arr_ques);
		    }
		});

		renderSelectJumpQues();
	}

	$(document).on("click", "#btnShowAll", function(e){
		$(".row_question").each(function(){
			$(this).find(".box-content").show();
			$(this).find(".box-header .btnShowHide i").removeClass("glyphicon-chevron-up");
			$(this).find(".box-header .btnShowHide i").addClass("glyphicon-chevron-down");
		});
	});

	$(document).on("click", "#btnHideAll", function(e){
		$(".row_question").each(function(){
			$(this).find(".box-content").hide();
			$(this).find(".box-header .btnShowHide i").removeClass("glyphicon-chevron-down");
			$(this).find(".box-header .btnShowHide i").addClass("glyphicon-chevron-up");
		});
	});

	$(document).on('click', '#btnAddQues', function (e) {
		e.preventDefault();
		showDialogQues(QUESTION_VOICE, 1);
		if(Object.keys(glb_arr_ques).length > OUT_MAX_SECTION_COUNT){
			alert("セクション最大件数は" + OUT_MAX_SECTION_COUNT + "問です。");
			return;
		}else{
			$("#myModalLabel").html("セクションの追加");
			$(".rdAudio").parents(".form-audio").find(".audio_mix").hide();
			$(".rdAudio").parents(".form-audio").find(".audio").show();
	    	$("#btnSubmitQues").attr("ques_no", "");
	    	$("#btnSubmitQues").attr("ques_type", "");
			$("#dialog").modal("show");
		}
	});

	$(document).on('click', '.btnEdit', function (e) {
		$('#edit_flg').val(1);
		var ques_no = $(this).parents(".row_question").find(".hdQuesNo").val();
    	for (var key in glb_arr_ques[ques_no]) {
    		if (glb_arr_ques[ques_no].hasOwnProperty(key)) {
    			$('#dialog').find("input[name="+key+"][type=text]").val(glb_arr_ques[ques_no][key]);
    			$('#dialog').find("select[name="+key+"]").val(glb_arr_ques[ques_no][key]);
    			$('#dialog').find("textarea[name="+key+"]").val(glb_arr_ques[ques_no][key]);
    			$('#dialog').find("input[name="+key+"][type=checkbox]").prop("checked", true);
    		}
		}
    	var ques_type = glb_arr_ques[ques_no]["question_type"];
    	var question_yuko = glb_arr_ques[ques_no]["question_yuko"];
		if (question_yuko == 1) {
			$("#question_yuko").prop("checked", true);
		} else {
			$("#question_yuko").prop("checked", false);
		}
    	var audio_type = 0;
    	if (glb_arr_ques[ques_no]["audio_type"]) {
			audio_type = glb_arr_ques[ques_no]["audio_type"];
    	}
    	$("#basic-audio").find(".rdAudio[value=" + audio_type + "]").prop("checked", true);
    	if(audio_type == 1 || audio_type == 2){
    		$("#basic-audio").find(".audio").hide();
    		$("#basic-audio").find(".audio_mix").show();
    	}else{
    		$("#basic-audio").find(".audio").show();
    		$("#basic-audio").find(".audio_mix").hide();
    		$("#basic-audio").find(".btnPlay").remove();
    		$("#basic-audio").find(".btnStop").remove();
    		$("#basic-audio").append(
				'<a class="btn btnPlay btn-default" audio_id="'+ glb_arr_ques[ques_no]["audio_id"] +'">' +
					'<i class="glyphicon glyphicon-play" ></i>' +
				'</a> \n' +
				'<a class="btn btnStop btn-default">' +
					'<i class="glyphicon glyphicon-stop" ></i>' +
				'</a>'
			);
    	}
    	var trans_audio_type = 0;
    	if (glb_arr_ques[ques_no]["trans_audio_type"]) {
    		trans_audio_type = glb_arr_ques[ques_no]["trans_audio_type"];
    	}
    	$("#trans-audio").find(".rdAudio[value=" + trans_audio_type + "]").prop("checked", true);
    	if(trans_audio_type == 1 || trans_audio_type == 2){
    		$("#trans-audio").find(".audio").hide();
    		$("#trans-audio").find(".audio_mix").show();
    	}else{
    		$("#trans-audio").find(".audio").show();
    		$("#trans-audio").find(".audio_mix").hide();
    		$("#trans-audio").find(".btnPlay").remove();
    		$("#trans-audio").find(".btnStop").remove();
    		$("#trans-audio").append(
				'<a class="btn btnPlay btn-default" audio_id="'+ glb_arr_ques[ques_no]["trans_audio_id"] +'">' +
					'<i class="glyphicon glyphicon-play" ></i>' +
				'</a> \n' +
				'<a class="btn btnStop btn-default">' +
					'<i class="glyphicon glyphicon-stop" ></i>' +
				'</a>'
			);
    	}
    	var trans_timeout_audio_type = 0;
    	if(glb_arr_ques[ques_no]["trans_timeout_audio_type"]){
    		trans_timeout_audio_type = glb_arr_ques[ques_no]["trans_timeout_audio_type"];
    	}

    	$("#trans-timeout-audio").find(".rdAudio[value=" + trans_timeout_audio_type + "]").prop("checked", true);
    	if(trans_timeout_audio_type == 1 || trans_timeout_audio_type == 2){
    		$("#trans-timeout-audio").find(".audio").hide();
    		$("#trans-timeout-audio").find(".audio_mix").show();
    	}else{
    		$("#trans-timeout-audio").find(".audio").show();
    		$("#trans-timeout-audio").find(".audio_mix").hide();
    		$("#trans-timeout-audio").find(".btnPlay").remove();
    		$("#trans-timeout-audio").find(".btnStop").remove();
    		$("#trans-timeout-audio").append(
				'<a class="btn btnPlay btn-default" audio_id="'+ glb_arr_ques[ques_no]["trans_timeout_audio_id"] +'">' +
					'<i class="glyphicon glyphicon-play" ></i>' +
				'</a> \n' +
				'<a class="btn btnStop btn-default">' +
					'<i class="glyphicon glyphicon-stop" ></i>' +
				'</a>'
			);
    	}
    	//繰り返し確認チェックボックス初期化
		var recheck_flag = glb_arr_ques[ques_no]["recheck_flag"];
		if (recheck_flag == 1) {
			$("#cbRecheckFlag").prop("checked", true);
			$("#cbRecheckFlag").change();
		} else {
			$("#cbRecheckFlag").prop("checked", false);
		}

    	var recheck_audio_type = 0;
    	if (glb_arr_ques[ques_no]["recheck_audio_type"]) {
    		recheck_audio_type = glb_arr_ques[ques_no]["recheck_audio_type"];
    	}
    	$("#recheck-audio").find(".rdAudio[value=" + recheck_audio_type + "]").prop("checked", true);
    	if(recheck_audio_type == 1 || recheck_audio_type == 2){
    		$("#recheck-audio").find(".audio").hide();
    		$("#recheck-audio").find(".audio_mix").show();
    	}else{
    		$("#recheck-audio").find(".audio").show();
    		$("#recheck-audio").find(".audio_mix").hide();
			if (recheck_flag == 1) {
				$("#recheck-audio").append(
					'<a class="btn btnPlay btn-default" audio_id="' + glb_arr_ques[ques_no]["recheck_audio_id"] + '">' +
					'<i class="glyphicon glyphicon-play" ></i>' +
					'</a> \n' +
					'<a class="btn btnStop btn-default">' +
					'<i class="glyphicon glyphicon-stop" ></i>' +
					'</a>'
				);
			}
    	}
    	//#終了ボタンチェックボックス
    	var yuko_button_record = glb_arr_ques[ques_no]["yuko_button_record"];
		if (yuko_button_record == 1) {
			$("#cbYukoButtonRecord").prop("checked", true);
		} else {
			$("#cbYukoButtonRecord").prop("checked", false);
		}
		//空き席数無しチェックボックス
		var trans_seat_flag = glb_arr_ques[ques_no]["trans_empty_seat_flag"];
		if (trans_seat_flag == 1) {
			$("#cbTransEmptySeatFlag").prop("checked", true);
		} else {
			$("#cbTransEmptySeatFlag").prop("checked", false);
		}

		//転送元電話番号チェックボックス
		var trans_phone_number_play_flag = glb_arr_ques[ques_no]["trans_phone_number_play_flag"];
		if (trans_phone_number_play_flag == 1) {
			$("#cbTransPhoneNumberFlag").prop("checked", true);
		} else {
			$("#cbTransPhoneNumberFlag").prop("checked", false);
		}

		var edit_flag = 2;
    	$("#slQuesType").val(ques_type);
    	if (ques_type == 9) {
    		$("#slQuesType").attr("disabled", true);
    		edit_flag = 1;
    	}
		if(ques_type == QUESTION_SMS){
			// チェックボックスの状態を初期化
	    	var sms_use_short_url = glb_arr_ques[ques_no]["sms_use_short_url"];
			if (sms_use_short_url == 1) {
				$("#sms_use_short_url").prop("checked", true);
			} else {
				$("#sms_use_short_url").prop("checked", false);
			}

	    	// 選択中の電話番号の状態をもとに、画面の状態を決める（文字数カウントや短縮URLチェックボックスの有効・無効など）
	    	setSMSState();
		}
    	showDialogQues(ques_type, edit_flag);
		$("#myModalLabel").html("セクションの編集");
    	$("#btnSubmitQues").attr("ques_no", ques_no);
    	$("#btnSubmitQues").attr("ques_type", ques_type);
		$('#dialog').modal('show');
	});

	$(document).on('click', '.btnDelete', function (e) {
		if(confirm("削除します。よろしいですか？")){
			//画面対象質問削除
			$(this).parents(".row_question").remove();
			//objectで対象質問削除
			ques_no = $(this).parents(".row_question").find(".hdQuesNo").val();
			ques_id = $(this).parents(".row_question").find(".hdQuesId").val();
			delete glb_arr_ques[ques_no];
			var temp_glb = $.extend(true, {}, glb_arr_ques);
			var i = 1;
			glb_arr_ques = new Object();
			for(var key in temp_glb){
				glb_arr_ques[i] = temp_glb[key];
				i++;
			}
			if(ques_id){
				glb_arr_ques_del.push(ques_id);
			}
			//質問NO更新
			$(".hdQuesNo").each(function(index){
				$(this).val(index + 1);
			});
			updateQuesNo();
			renderSelectJumpQues();
		}
	});

	$(document).on('click', '.btnMove', function (e) {
		$(".row_question").addClass("item-disabled");
		$(this).parents(".row_question").removeClass("item-disabled");
	});

	$(document).on('click', '.btnShowHide', function (e) {
		$(this).parents(".row_question").find(".box-content").toggle();
		if($(this).parents(".row_question").find(".box-content").css('display') == 'none'){
			$(this).parents(".row_question").find(".box-header .btnShowHide i").removeClass("glyphicon-chevron-down");
			$(this).parents(".row_question").find(".box-header .btnShowHide i").addClass("glyphicon-chevron-up");
		}else{
			$(this).parents(".row_question").find(".box-header .btnShowHide i").removeClass("glyphicon-chevron-up");
			$(this).parents(".row_question").find(".box-header .btnShowHide i").addClass("glyphicon-chevron-down");
		}
	});

	$(document).on('click', '.btnPlay', function (e) {
		var audio_id = $(this).attr("audio_id");
		var source = appRoot + 'Template/read_file/' + audio_id;
		$("#audio-player").find("audio").attr("src", source);
		$("#audio-player").find("audio").trigger('play');
	});

	$(document).on('click', '.btnStop', function (e) {
		$("#audio-player").find("audio").trigger('pause');
	});

	//20160224 Add by Thai : #6519 - Update select jump question - Begin
	$(document).on('change', '.select_jump_ques', function (e) {
		updateDataWhenSelectJumpQues($(this));
	});
	//20160224 Add by Thai : #6519 - Update select jump question - End

	$("#btnSubmit").click(function() {
		var message = "";
		var check_sms_message = "";
		var required_timeout = false;
		var exist_ques_end = false;
		var question_end = false;
		var question_jump = true;
		var audio_type = "0";
		var audio_check = "0";
		var audio_ng_flag = "0";
		var display_number = [];
		var sms_use_short_url = [];
		var check_sms_display_number = true;
		var check_sms_use_short_url = true;

		//$("#flash-error").hide();
		$("#template-error-message").hide();
		if (Object.keys(glb_arr_ques).length == 0){
			message += "セクションを追加してください。<br>";
		}else{
			for(var question in glb_arr_ques){
				//20160225 Edit by Thai : #6519 - Validate jump question - Begin
				var ques_type = glb_arr_ques[question].question_type;
				if(ques_type == QUESTION_BASIC || ques_type == QUESTION_AUTH){
					if (ques_type == QUESTION_BASIC) {
						var list_key_jumps = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 51, 52];
						var prefix = 'txtAnswJump';
					} else if (ques_type == QUESTION_AUTH) {
						var list_key_jumps = [1, 2, 3];
						var prefix = 'txtAnswJumpAuth';
					}

/*					if (!glb_arr_ques[question][prefix + '99']) {
						message += "質問" + question + "でタイムアウトの飛び先を選択してください。<br>";
					}*/

					for (k in list_key_jumps) {
						list_key_jumps[k] = prefix + list_key_jumps[k];
					}
					if (!glb_arr_ques[question]['jump_question']) {
						for (k in list_key_jumps) {
							if (!glb_arr_ques[question][list_key_jumps[k]]) {
								message += "質問" + question + "で他の場合の飛び先を選択してください。<br>";
								break;
							}
						}
					}
				}

				//20160427 Add by Thai : #6722 validate jump_question QUESTION_AUTH_CHAR - Begin
				if (ques_type == QUESTION_AUTH_CHAR) {
					if (!glb_arr_ques[question]['txtAnswJumpAuthChar1']) {
						message += "質問" + question + "で「入力値 ＝ 認証項目」の飛び先を選択してください。<br>";
					}
					if (!glb_arr_ques[question]['txtAnswJumpAuthChar2']) {
						message += "質問" + question + "で「入力値 ≠ 認証項目」の飛び先を選択してください。<br>";
					}
				}
				//20160427 Add by Thai : #6722 validate jump_question QUESTION_AUTH_CHAR - End

				if(glb_arr_ques[question].question_type == QUESTION_VOICE || glb_arr_ques[question].question_type == QUESTION_TEL || glb_arr_ques[question].question_type == QUESTION_RECORD || glb_arr_ques[question].question_type == QUESTION_SMS){
					if (!glb_arr_ques[question]['jump_question']) {
						message += "質問" + question + "で飛び先を選択してください。<br>";
					}
				}
				//20160225 Edit by Thai : #6519 - Validate jump question - End

				//20160325 Edit by Canh : 質問・認証・番号入力セクションがある場合タイムアウトセクションが必須 - Begin
				if(glb_arr_ques[question].question_type == QUESTION_BASIC
						|| glb_arr_ques[question].question_type == QUESTION_AUTH
						|| glb_arr_ques[question].question_type == QUESTION_AUTH_CHAR
						|| glb_arr_ques[question].question_type == QUESTION_TEL
				){
					required_timeout = true;
				}
				//20160325 Edit by Canh : 質問・認証・番号入力セクションがある場合タイムアウトセクションが必須 - End
				//20160325 Add by Canh : 切断セクションが必須 - Begin
				if (glb_arr_ques[question].question_type == QUESTION_END){
					exist_ques_end = true;
				}
				//20160325 Add by Canh : 切断セクションが必須 - End
				//20161019 Add by Kato : 音声合成の音声種類は混在不可 - Begin
				if ((glb_arr_ques[question].question_type == QUESTION_VOICE
						|| glb_arr_ques[question].question_type == QUESTION_BASIC
						|| glb_arr_ques[question].question_type == QUESTION_TIMEOUT
					) && glb_arr_ques[question]["audio_type"] != "0"
				){
					audio_type = glb_arr_ques[question]["audio_type"];
					if (audio_check == "0") {
						audio_check = audio_type;
					}
				} else if (glb_arr_ques[question].question_type == QUESTION_AUTH
						|| glb_arr_ques[question].question_type == QUESTION_AUTH_CHAR
						|| glb_arr_ques[question].question_type == QUESTION_TEL){
					if (glb_arr_ques[question]["recheck_audio_type"]){
						if(glb_arr_ques[question]["audio_type"] == "0" && glb_arr_ques[question]["recheck_audio_type"] != "0") {
							audio_type = glb_arr_ques[question]["recheck_audio_type"];
						} else if ((glb_arr_ques[question]["audio_type"] != "0" && glb_arr_ques[question]["recheck_audio_type"] == "0") 
								|| (glb_arr_ques[question]["audio_type"] == glb_arr_ques[question]["recheck_audio_type"] && glb_arr_ques[question]["audio_type"] != "0" && glb_arr_ques[question]["recheck_audio_type"] != "0")) {
							audio_type = glb_arr_ques[question]["audio_type"];
						} else if (glb_arr_ques[question]["audio_type"] != glb_arr_ques[question]["recheck_audio_type"]) {
							audio_ng_flag = "1";
						}
					} else {
						audio_type = glb_arr_ques[question]["audio_type"];
					}
					if (audio_check == "0") {
						audio_check = audio_type;
					}
				} else if (glb_arr_ques[question].question_type == QUESTION_TRANS){
					if (glb_arr_ques[question]["trans_timeout_audio_type"]){
						if(glb_arr_ques[question]["trans_audio_type"] == "0" && glb_arr_ques[question]["trans_timeout_audio_type"] != "0") {
							audio_type = glb_arr_ques[question]["trans_timeout_audio_type"];
						} else if ((glb_arr_ques[question]["trans_audio_type"] != "0" && glb_arr_ques[question]["trans_timeout_audio_type"] == "0") 
								|| (glb_arr_ques[question]["trans_audio_type"] == glb_arr_ques[question]["trans_timeout_audio_type"] && glb_arr_ques[question]["trans_audio_type"] != "0" && glb_arr_ques[question]["trans_timeout_audio_type"] != "0")) {
							audio_type = glb_arr_ques[question]["trans_audio_type"];
						} else if (glb_arr_ques[question]["trans_audio_type"] != glb_arr_ques[question]["trans_timeout_audio_type"]) {
							audio_ng_flag = "1";
						}
					} else {
						audio_type = glb_arr_ques[question]["trans_audio_type"];
					}
					if (audio_check == "0") {
						audio_check = audio_type;
					}
				}
				// 今回の質問が合成音声でなく、
				// 前の質問のオーディオtypeと対応と今回の質問のオーディオtypeが異なる場合は、エラーとする。
				if (audio_type != "0" && audio_check != audio_type) {
					audio_ng_flag = "1";
				}
				//20161019 Add by Kato : 音声合成の音声種類は混在不可 - End

				//20160325 Add by Linh : check display number sms question - Begin
				if(ques_type == QUESTION_SMS){
					var flg_sms_use_short_url = glb_arr_ques[question].sms_use_short_url ? glb_arr_ques[question].sms_use_short_url : "0";
					if(!check_sms_display_number || !check_sms_use_short_url){
						continue;
					}
					// このテンプレート上の初めてのSMSセクション
					if(display_number.length == 0){
						display_number.push(glb_arr_ques[question].smsPhoneNumber);
						sms_use_short_url.push(flg_sms_use_short_url);
						continue;
					}

					if(jQuery.inArray(glb_arr_ques[question].smsPhoneNumber, display_number) == -1){
						check_sms_message = OUTBOUND_CHECK_DISPLAY_NUMBER + '<br>';
						check_sms_display_number = false;
						continue;
					}

					if(jQuery.inArray(flg_sms_use_short_url, sms_use_short_url) == -1){
						check_sms_message = OUTBOUND_CHECK_USE_SHORT_URL + '<br>';
						check_sms_use_short_url = false;
						continue;
					}
					display_number.push(glb_arr_ques[question].smsPhoneNumber);
					sms_use_short_url.push(glb_arr_ques[question].sms_use_short_url);
					
				}
				//20160325 Add by Canh : check display number sms question - End
			}
			
			if (audio_ng_flag == "1") {
				message += "同一テンプレート内で音声合成の[男性][女性]を混在させることはできません。<br>";
			}

			if (glb_arr_ques[Object.keys(glb_arr_ques).length].question_type != QUESTION_TIMEOUT && required_timeout){
				message += "セクションの一番最後にタイムアウトを設定してください。<br>";
			}
			//20160325 Add by Canh : 切断セクションが必須 - Begin
			if(!exist_ques_end){
				message += "切断セクションが必須です。<br>";
			}
			//20160325 Add by Canh : 切断セクションが必須 - End
		}
		if(check_sms_message){
			message += check_sms_message;
		}

		if (message){
			$('#template-error-message').find("p").remove();
			$('#template-error-message').append('<p>' + message + '</p>');
			$("#template-error-message").show();
			//$("#flash-error").show();
			//$("#flash-error").html(message);
			return;
		}

		if($("#TemplateForm").valid()){
			if(confirm("保存します。よろしいですか？")){
				display_load();
				$.ajax({
					type: 'POST',
					url: appRoot + 'Template/save_template',
					data: {
						template_id: $("#hdTemplateId").val(),
						template_name: $("#txtTemplateName").val(),
						description: $("#txtTemplateDescription").val(),
						glb_arr_ques: glb_arr_ques,
						glb_arr_ques_del: glb_arr_ques_del,
					},
					success: function(data) {
						$.unblockUI();
						if(data == "success"){
			         		window.location.href = appRoot+"Template/index/success"
			         	}else if(data == "err_exist_schedule"){
			         		alert("予定されているスケジュールに存在するテンプレートの為編集できません。");
			         	}else{
			         		alert("エラーを発生しました。");
			         	}
					},
				});
			}
		}
	});

	// URL短縮（電話番号を替えた時、短縮URLチェックボックスの状態を切替、SMS本文を再計算する。）
	$(document).on('click', '#slSMSPhoneNumber', function (e) {
		setSMSState();
	});


	// URL短縮（URL短縮ボタンをおした時、SMS本文を再計算する）
	$(document).on('click', '#sms_use_short_url', function (e) {
		fillSMSBodyCount();
	});

	//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box begin
	$(document).on('click', '#question_yuko', function (e) {
		if ($('#slQuesType').val() == QUESTION_BASIC) {
			if ($(this).is(':checked')) {
				$('#tblQuesBasic input[type="checkbox"]').attr('disabled', false);
			} else {
				$('#tblQuesBasic input[type="checkbox"]').attr('disabled', true);
				$('#tblQuesBasic input[type="checkbox"]').prop("checked", false);
			}
		} else if ($('#slQuesType').val() == QUESTION_AUTH) {
			if ($(this).is(':checked')) {
				$('#tblQuesAuth input[type="checkbox"]').attr('disabled', false);
			} else {
				$('#tblQuesAuth input[type="checkbox"]').attr('disabled', true);
				$('#tblQuesAuth input[type="checkbox"]').prop("checked", false);
			}
			//20160420 Add by Thai : #6722 add QUESTION_AUTH_CHAR - Begin
		} else if ($('#slQuesType').val() == QUESTION_AUTH_CHAR) {
			if ($(this).is(':checked')) {
				$('#tblQuesAuthChar input[type="checkbox"]').attr('disabled', false);
			} else {
				$('#tblQuesAuthChar input[type="checkbox"]').attr('disabled', true);
				$('#tblQuesAuthChar input[type="checkbox"]').prop("checked", false);
			}
			//20160420 Add by Thai : #6722 add QUESTION_AUTH_CHAR - End
		}
	});
	//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box end
});

function upload_file(inputF){
	var maxFileSize = "50000000";
	var maxFileSizeExceeded = "ファイルサイズが50MBを超えています。";
	var checkSize = false;
	var checkFormart = false;
	var checkUpload = true;
	//size確認
	$.each(inputF.files,function(){
		if(this.size && maxFileSize && this.size > parseInt(maxFileSize)){
			checkSize = true;
			checkUpload = false;
		}
	});
	//format確認
	var parts = $(inputF).val().split('.');
	var type_file = parts[parts.length -1];
	if(type_file && type_file != "wav"){
		checkFormart = true
		checkUpload = false;
	}
	//実行
	if(checkSize){
		alert(maxFileSizeExceeded);
	}else if(checkFormart){
		alert("音声ファイルはwavファイルを指定してください。");
	}else if(checkUpload && $(inputF).val()){
		$('.btnClosePopupAddQues').attr('disabled', true); //20160222 Add by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file
		var data = new FormData();
		data.append("data[File]", inputF.files[0]);
		var url = appRoot+"Template/upload_file";
		var file_name = inputF.files[0].name;
		setDisabled();
		$.ajax(url, {
			xhr: function () {
				var xhr = new window.XMLHttpRequest();
			    xhr.upload.addEventListener("progress", function (evt) {
				    if (evt.lengthComputable) {
		                var percentComplete = evt.loaded / evt.total;
		                $(inputF).parents(".form-audio").find(".progress").show();
		                $(inputF).parents(".form-audio").find(".btnPlay").remove();
		                $(inputF).parents(".form-audio").find(".btnStop").remove();
		                $(inputF).parents(".form-audio").find(".progress-bar").text(Math.round(percentComplete * 100) + "%");
		                $(inputF).parents(".form-audio").find(".progress-bar").width(Math.round(percentComplete * 100) + "%");
		            }
		        }, false);
		        return xhr;
		    },
		    type: "POST",
		    contentType: false,
		    data: data,
		    cache: false,
		    processData: false,
		    error: function (xhr, str) {
		        alert("ファイルアップロードに失敗しました。");
		    	$(inputF).parents("td").find(".upload_progress").hide();
		    	$('.btnClosePopupAddQues').attr('disabled', false); //20160222 Add by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file
		    },
		    success: function (data) {
		    	setEnabled();
		    	if(data=="err_db" || data=="err_pcm"){
		    		if(data=="err_db"){
		    			alert("ファイルアップロードに失敗しました。");
		    		}else if(data=="err_pcm"){
		    			alert("ファイル変換に失敗しました。");
		    		}
//		    		$(inputF).parents("td").find(".file_selector").show();
//			    	$(inputF).parents("td").find(".btnDownloadFile").hide();
//			    	$(inputF).parents("td").find(".hdUploadedFileId").val("");
//			    	$(inputF).parents("td").find(".uploaded_file_name").text("");
//			    	$(inputF).parents("td").find(".upload_progress").hide();
		    	}else{
		    		$(inputF).parents(".form-audio").find(".hdAudioId").val(data);
		    		$(inputF).parents(".form-audio").find(".hdAudioName").val(file_name);
					$(inputF).parents(".form-audio").append(
						'<a class="btn btnPlay btn-default" audio_id="'+ data +'">' +
							'<i class="glyphicon glyphicon-play" ></i>' +
						'</a> \n' +
						'<a class="btn btnStop btn-default">' +
							'<i class="glyphicon glyphicon-stop" ></i>' +
						'</a>'
					);
					$(inputF).parents(".form-audio").find(".progress").hide();
		    	}
				$('.btnClosePopupAddQues').attr('disabled', false); //20160222 Add by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file
		    }
		  });
	}
}

function showDialogQues(ques_type, edit_flag){

	//編集のとき
	if (edit_flag == 2) {
		$("#slQuesType > option[value='9']").remove();
	}

	$("#slQuesType").val(ques_type);
	$(".tblAddQues").each(function(){
		$(this).hide();
	});
	if(ques_type == QUESTION_VOICE || ques_type == QUESTION_BASIC || ques_type == QUESTION_AUTH || ques_type == QUESTION_AUTH_CHAR || ques_type == QUESTION_TEL || ques_type == QUESTION_RECORD || ques_type == QUESTION_TIMEOUT){
		$("#tblQuesPlayback").show();
		if(ques_type == QUESTION_BASIC){
			$("#tblQuesBasic").show();
			$("#tblYukoQues").show();
			//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box begin
			if (!$('#question_yuko').is(':checked')) {
				$('#tblQuesBasic input[type="checkbox"]').attr('disabled', true);
			}
			//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box end
		}else if(ques_type == QUESTION_AUTH){
			$("#tblYukoQues").show();
			$("#tblQuesAuthItem").show();
			$("#tblQuesAuth").show();
			$("#tblRecheck").show();
			$("#tblQuesPlayback").find(".slCustInfo").hide();
			$("#tblQuesPlayback").find(".btnCustInfo").hide();
			//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box begin
			if (!$('#question_yuko').is(':checked')) {
				$('#tblQuesAuth input[type="checkbox"]').attr('disabled', true);
			}
			//20160222 Add by Giang : #6495 - Bug 164 - enable/disable check box end
			//20160420 Add by Thai : #6722 add QUESTION_AUTH_CHAR - Begin
		}else if(ques_type == QUESTION_AUTH_CHAR){
			$("#tblYukoQues").show();
			$("#tblQuesAuthItem").show();
			$("#tblQuesAuthChar").show();
			$("#tblRecheck").show();
			$("#tblQuesPlayback").find(".slCustInfo").hide();
			$("#tblQuesPlayback").find(".btnCustInfo").hide();
			if (!$('#question_yuko').is(':checked')) {
				$('#tblQuesAuthChar input[type="checkbox"]').attr('disabled', true);
			}
			//20160420 Add by Thai : #6722 add QUESTION_AUTH_CHAR - End
		}else if(ques_type == QUESTION_TEL){
			$("#tblQuesTel").show();
			$("#tblRecheck").show();
			$("#tblQuesPlayback").find(".slCustInfo").hide();
			$("#tblQuesPlayback").find(".btnCustInfo").hide();
		}else if(ques_type == QUESTION_RECORD){
			$("#tblQuesRecord").show();
		}else if(ques_type == QUESTION_TIMEOUT){
			$("#tblQuesPlayback").find(".slCustInfo").hide();
			$("#tblQuesPlayback").find(".btnCustInfo").hide();
		}
	}else if(ques_type == QUESTION_TRANS){//転送
		$("#tblQuesTrans").show();
	} else if(ques_type == QUESTION_SMS){
		$("#tblSMS").show();
	}
}

function updateQuesNo() {
	$(".ques_no").each(function(index){
		$(this).text(index + 1);
	});
}

function detectIE() {
	var ua = window.navigator.userAgent;
	var msie = ua.indexOf('MSIE ');
	if (msie > 0) {
		return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
	}
	var trident = ua.indexOf('Trident/');
	if (trident > 0) {
		var rv = ua.indexOf('rv:');
		return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
	}
	var edge = ua.indexOf('Edge/');
	if (edge > 0) {
		return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
	}
	return false;
}

enableSelection(document.body);
$(document).unbind("keydown", disabledCopyKey);

// SMS本文の文字数をチェックする
function fillSMSBodyCount() {
	var content = $('#smsBodyContent').val();
	contentLength = replaceUrlSMSBody(content, $('#sms_use_short_url').prop('checked')).length;
	$('#smsBodyCount').html(contentLength);
	var errorContent = $("#popupflash-error").html().replace(OUTBOUND_QUESTION_SMS_BODY_REACH_LIMIT + '<br>', '');
	if(contentLength > SMS_MAX_LENGTH){
		$("#popupflash-error").show();
		$("#popupflash-error").html(errorContent + OUTBOUND_QUESTION_SMS_BODY_REACH_LIMIT +'<br>');
	}
}