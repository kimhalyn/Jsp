/**
 * 휴대폰 번호 중복체크
 */
 
var isHpOk = false;
 
$(function(){
    		
	// 전화번호 중복체크
	var inputHp = $('input[name=hp]');
	
	inputHp.focusout(function(){
		
		var hp = $(this).val();
		var jsonData = {'hp':hp};
		
		$.ajax({
			url: '/Jboard1/user/proc/checkHp.jsp',
			type: 'get',
			data: jsonData,
			dataType: 'json',
			success: function(data){
				
				if(data.result == 1){    						
					$('.resultHp').css('color', 'red').text('이미 사용중인 전화번호 입니다.');
					isHpOk = false;
				}else{
					$('.resultHp').css('color', 'green').text('사용 가능한 전화번호 입니다.');
					isHpOk = true;
				} 					
			}
		});
	});
});