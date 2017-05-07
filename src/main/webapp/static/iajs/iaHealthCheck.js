var IHC = (function(){
	var initNo = function(no){
    	var nos = no.split("-");
    	for(var i=0;i<nos.length;i++){
    		$("input[name='no']:eq("+i+")").val(nos[i]);
    	}
	};
	var initCheckDate = function(checkDate){
    	var chkdt = checkDate.split("-");
    	for(var i=0;i<chkdt.length;i++){
    		$("input[name='checkDate']:eq("+i+")").val(chkdt[i]);
    	}
	};
	var initSymptom = function(symptom){
    	var symptoms = symptom.split("_");
    	$("input[name='sptmOther']").val(symptoms[0]);
    	var syps = symptoms[1].split(",");
    	for(var i=0;i<syps.length;i++){
    		$("input[name='sptm']:eq("+i+")").val(syps[i]);
    	}
	};
	var initBloodPressure = function(bloodLeft){
		var bL = JSON.parse(bloodLeft);
		$("input[name='bLMin']").val(bL.bLMin);
    	$("input[name='bLMax']").val(bL.bLMax);
    	$("input[name='bRMin']").val(bL.bRMin);
    	$("input[name='bRMax']").val(bL.bRMax);
	};
	var initKnowAbility = function(knowAbility){
		var kao = JSON.parse(knowAbility);
		$("input[name='kas']").val(kao.kas);
    	$("input[name='ka']").val(kao.ka);
	};
	var initEmotion = function(emotion){
		var emto = JSON.parse(emotion);
		$("input[name='emts']").val(emto.emts);
    	$("input[name='emt']").val(emto.emt);
	};
	//逗号分隔
	var initByComma = function(data, inputName){
		var ds = data.split(',');
		for(var i=0;i<ds.length;i++){
    		$("input[name='"+inputName+"']:eq("+i+")").val(ds[i]);
    	}
	};
	//下划线分隔
	var initByUnderline = function(data, inputName){
		var ds = data.split('_');
		for(var i=0;i<ds.length;i++){
    		$("input[name='"+inputName+"']:eq("+i+")").val(ds[i]);
    	}
	};
    var init = function(initData){
    	initCheckDate(initData.checkDate);
    	initNo(initData.no);
    	initSymptom(initData.symptom);
    	initBloodPressure(initData.bloodLeft);
    	initKnowAbility(initData.knowAbility);
    	initEmotion(initData.emotion);
    	//生活方式
    	initByUnderline(initData.physicalTraining, 'physicalTraining');
    	initByComma(initData.eatingHabits, 'eatingHabits');
    	initByUnderline(initData.smokingCondition, 'smokingCondition');
    	initByUnderline(initData.drinkingCondition, 'drinkingCondition');
    	initByUnderline(initData.occupationalHazard, 'occupationalHazard');
    	//脏器功能
    	initByComma(initData.mouth, 'mouth');
    	initByComma(initData.eyesight, 'eyesight');
    	initByComma(initData.listening, 'listening');
    	initByComma(initData.motorFunction, 'motorFunction');
    	//查体
    	initByComma(initData.fundus, 'fundus');
    	initByComma(initData.skin, 'skin');
    	initByComma(initData.sclera, 'sclera');
    	initByComma(initData.lymphNode, 'lymphNode');
    	initByComma(initData.lung, 'lung');
    	initByComma(initData.heart, 'heart');
    	initByComma(initData.abdomen, 'abdomen');
    	initByComma(initData.dre, 'dre');
    	initByComma(initData.breast, 'breast');
    	initByComma(initData.gynecology, 'gynecology');
    	initByComma(initData.bloodRoutine, 'bloodRoutine');
    	initByComma(initData.urineRoutine, 'urineRoutine');
    	initByComma(initData.glu, 'glu');
    	initByComma(initData.ecg, 'ecg');
    	//辅助检查
    	
    };
    //症状保存
    var symptom = function(){
    	var sptm = $("input[name='sptm']");
		var sptmo = $("input[name='sptmOther']").val();
		var sptms = [];
		for(var i=0;i<sptm.length;i++){
			if(sptm[i].value !== ''){
				sptms.push(sptm[i].value);
			}
		}
		$("input[name='symptom']").val(sptmo+'_'+sptms.join(","));
    };
    //血压保存
    var bloodPressure = function(){
    	var bLMin = $("input[name='bLMin']").val();
    	var bLMax = $("input[name='bLMax']").val();
    	var bRMin = $("input[name='bRMin']").val();
    	var bRMax = $("input[name='bRMax']").val();
    	var bp = {};
    	bp.bLMin = bLMin;
    	bp.bLMax = bLMax;
    	bp.bRMin = bRMin;
    	bp.bRMax = bRMax;
    	//alert(JSON.stringify(bp));
    	$("input[name='bloodLeft']").val(JSON.stringify(bp));
    };
    //老年人认知功能 保存
    var knowAbility = function(){
    	var kas = $("input[name='kas']").val();
    	var ka = $("input[name='ka']").val();
    	var kao = {};
    	kao.kas = kas;
    	kao.ka = ka;
    	//alert(JSON.stringify(kao));
    	$("input[name='knowAbility']").val(JSON.stringify(kao));
    };
  	//老年人情感状态 保存
    var emotion = function(){
    	var emts = $("input[name='emts']").val();
    	var emt = $("input[name='emt']").val();
    	var emto = {};
    	emto.emts = emts;
    	emto.emt = emt;
    	//alert(JSON.stringify(emto));
    	$("input[name='emotion']").val(JSON.stringify(emto));
    };
    var save = function(){
    	symptom();
    	bloodPressure();
    	knowAbility();
    	emotion();
    	loading('正在提交，请稍等...');
    	document.forms[0].submit();
    };
    return {
      init : init,
      save : save
    };
})();