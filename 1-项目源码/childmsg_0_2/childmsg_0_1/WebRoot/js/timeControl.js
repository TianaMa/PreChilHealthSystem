// JavaScript Document

function formartTime(obj){
	var value = obj.value;
	if(value != ""){
		var time = "";
		var reg = /^\d{1}$/; //�ж��Ƿ�Ϊ����
		var reg1=/^[01]{1}\d{1}[0-5]{1}\d[0-5]{1}\d$/;
		var reg2=/^2[0-3]{1}[0-5]{1}\d[0-5]{1}\d$/;//ƥ��ʱ���Ƿ�׼ȷ
		//�����ַ����еķ������ַ�
		for(var i=0;i<value.length;i++){
			if(reg.test(value.charAt(i))){
				time += value.charAt(i);
			}
		}
		//ֻ��ȡ��λʱ��
		if(time.length >6){
			time = time.substr(0,6);	
		}
		//������λ�Ķ���0
		var len = 6-time.length;
		for(var i=0;i<len;i++){
			time += "0";
		}

	    if(reg1.test(time)||reg2.test(time)){
			var t1 = time.substr(0,2);
			var t2 = time.substr(2,2);
			var t3 = time.substr(4,2);
			time = t1 + ":" + t2 + ":" + 	t3;
		}else{
			time = "00:00:00";	
		}	
		obj.value = time;	
		
	}else{
		obj.value = "00:00:00";	
	}
}
