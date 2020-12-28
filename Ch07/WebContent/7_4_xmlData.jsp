<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	/*
		XML(Extensible Markup Language)
		- JSON과 더불어 이기종간의 데이터 전송을 위한 문서 포멧
		- 사용자가 직접 태그를 정의
		- JSON 보다 파싱 속도가 느림
	*/
	
	// xml 생성
	String xml  = "<members>";
		   
			xml += "<member>";
			xml += "<uid>A101</uid>";
			xml += "<name>김유신</name>";
			xml += "<hp>010-1234-1111</hp>";
			xml += "<pos>사원</pos>";
			xml += "</member>";
			xml += "<member>";
			
			xml += "<uid>A102</uid>";
			xml += "<name>김춘추</name>";
			xml += "<hp>010-1234-2222</hp>";
			xml += "<pos>부장</pos>";
			xml += "</member>";
			xml += "<member>";
			
			xml += "<uid>A103</uid>";
			xml += "<name>장보고</name>";
			xml += "<hp>010-1234-3333</hp>";
			xml += "<pos>대리</pos>";
			xml += "</member>";
			xml += "</members>";
			
	// xml 출력
	out.print(xml);
	
		 
		   
%>	