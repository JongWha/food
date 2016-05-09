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
<!-- Facebook API ------------------------------------------------------------------------ -->      
<script>
	//SDK 부분 시작
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1512365799079342',
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  //SDK 부분 종료
  
  //현재 로그인 상태 확인 함수 index.jsp에서 사용
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
    	location.href="main.jsp";
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }
  
  //현재 로그인 상태 확인 함수 main.jsp에서 사용
  function statusChangeCallback2(response) {
	    console.log('statusChangeCallback');
	    console.log(response);
	    // The response object is returned with a status field that lets the
	    // app know the current login status of the person.
	    // Full docs on the response object can be found in the documentation
	    // for FB.getLoginStatus().
	    if (response.status === 'connected') {
	    	testAPI();
	    	//location.href="main.jsp";
	    } else if (response.status === 'not_authorized') {
	      // The person is logged into Facebook, but not your app.
	      document.getElementById('status').innerHTML = 'Please log ' +
	        'into this app.';
	    } else {
	      // The person is not logged into Facebook, so we're not sure if
	      // they are logged into this app or not.
	      document.getElementById('status').innerHTML = 'Please log ' +
	        'into Facebook.';
	    }
	  }

  //index.jsp에서 페이스북 버튼 클릭시 실행되는 함수
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
  
  //logout 함수
  function logoutAPI(){
	  FB.logout(function(response) {
		  location.href="index.jsp";
		});
  }
  
  //이름 출력해주는 함수
  function testAPI() {
	    FB.api('/me', function(response) {
	      document.getElementById('status').innerHTML =
	        '안녕하세요, ' + response.name + '님';

	    });
	  }
</script>
</body>
</html>