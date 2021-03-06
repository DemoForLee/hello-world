<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>  
<html>
<head>
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/font-awesome/css/font-awesome.min.css" />

	<style>
	body{
		font-family: 'microsoft yahei',Arial,sans-serif;
		background-color: #222;
	}

	.redborder {
		border:2px solid #f96145;
		border-radius:2px;
	}

	.row {
		padding: 20px 0px;
	}

	.bigicon {
		font-size: 97px;
		color: #f08000;
	}

	.loginpanel {
		text-align: center;
		width: 300px;
		border-radius: 0.5rem;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
		margin: 10px auto;
		background-color: #555;
		padding: 20px;
	}

	input {
		width: 100%;
		margin-bottom: 17px;
		padding: 15px;
		background-color: #ECF4F4;
		border-radius: 2px;
		border: none;
	}

	h2 {
		margin-bottom: 20px;
		font-weight: normal;
		color: #EFEFEF;
	}

	.btn {
		border-radius: 2px;
		padding: 10px;
	}

	.btn span {
		font-size: 27px;
		color: white;
	}

	.buttonwrapper{
		position:relative;
		overflow:hidden;
		height:50px;
	}

	.lockbutton {
		font-size: 27px;
		color: #f96145;
		padding: 10px;
		width:100%;
		position:absolute;
		top:0;
		left:0;
	}

	.loginbutton {
		background-color: #f08000;
		width: 100%;
		-webkit-border-top-right-radius: 0;
		-webkit-border-bottom-right-radius: 0;
		-moz-border-radius-topright: 0;
		-moz-border-radius-bottomright: 0;
		border-top-right-radius: 0;
		border-bottom-right-radius: 0;
		left: -260px;
		position:absolute;
		top:0;
	}
	</style>
    <script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>

<!-- Interactive Login - START -->
<div class="container-fluid">
    <div class="row">
        <div class="loginpanel">
			<i id="loading" class="hidden fa fa-spinner fa-spin bigicon"></i>
            <h2>
				<span class="fa fa-quote-left "></span> 登录<span class="fa fa-quote-right "></span>
			</h2>
            <div>
                <input id="username" type="text" placeholder="用户名" onkeypress="check_values();">
                <input id="password" type="password" placeholder="密码" onkeypress="check_values();">

				<div class="buttonwrapper">
					<button id="loginbtn" class="btn btn-warning loginbutton">
						<span class="fa fa-check"></span>
					</button>
					<span id="lockbtn" class="fa fa-lock lockbutton redborder"></span>
				</div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">


    function check_values() {
        if ($("#username").val().length != 0 && $("#password").val().length != 0) {
            $("#loginbtn").animate({ left: '0' , duration: 'slow'});;
            $("#lockbtn").animate({ left: '260px' , duration: 'slow'});;
        }
    }

			
	$("#loginbtn").click(function(){
		$('#loading').removeClass('hidden');
		$.ajax({
			url:"login_sys",
			type:"post",
			data:{"uName":$("#username").val(),"pwd":$("#password").val()},
			success:function(result){
				if(result==='success'){
				}
				if(result==='fail'){
				}
			}
		});
	});

</script>

<!-- Interactive Login - END -->
<div class="container-fluid">
	<div class="row footerbox">
		<div class="col-md-1"></div>
		<div class="col-md-10">
		<footer class="text-center">
			<i class="fa fa-external-link"></i> 登录
		</footer>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>
</body>
</html>