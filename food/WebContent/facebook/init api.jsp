<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index FaceBook API</title>
</head>
<body>
<script>
window.fbAsyncInit = function() {
	  FB.init({
	    appId      : '1512365799079342',
	    cookie     : true,  // 쿠키가 세션을 참조할 수 있도록 허용
	    xfbml      : true,  // 소셜 플러그인이 있으면 처리
	    version    : 'v2.1' // 버전 2.1 사용
	  });
	 
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback2(response);
	    });
	 
	  };
</script>
</body>
</html>