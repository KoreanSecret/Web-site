<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        margin-top: 50px;
    }
    h2 {
        color: #333;
        text-align: center;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    input[type="text"], input[type="password"], input[type="file"] {
        width: calc(100% - 24px);
        padding: 10px;
        margin: 6px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 10px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    button:hover {
        background-color: #45a049;
    }
    .form-group {
        margin-bottom: 15px;
    }
</style>
<script type="text/javascript">
    let isNull = function(obj, msg){
        if(obj.value==''){
            alert(msg)
            obj.focus()
            return true
        }
        return false
    }

    let checkForm = function(){
        let f = document.inputForm

        if(f.id.value ==''){
            alert('아이디를 입력해주세요')
            f.id.focus()
            return false
        }
        if(isNull(f.name, '이름을 입력해주세요')){
            return false
        }
        if(isNull(f.pwd, '비밀번호를 입력해주세요')){
            return false
        }
        if(isNull(f.email, '이메일을 입력해주세요')){
            return false
        }
        if(isNull(f.phone_number, '핸드폰 번호를 입력해주세요')){
            return false
        }
        return true
    }
</script>
</head>
<body>
    <div class="container">
        <h2>회원가입 페이지</h2>
        <form name="inputForm" action="${pageContext.request.contextPath }/join.do" method="post" onsubmit="return checkForm()">
    <div class="form-group">
        <label for="user_id">아이디</label>
        <input type="text" id="user_id" name="user_id">
    </div>
    <div class="form-group">
        <label for="username">이름</label>
        <input type="text" id="username" name="username">
    </div>
    <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password">
    </div>
    <div class="form-group">
        <label for="email">이메일</label>
        <input type="text" id="email" name="email">
    </div>
    <div class="form-group">
        <label for="phone_number">전화번호</label>
        <input type="text" id="phone_number" name="phone_number">
    </div>
<input type="hidden" name="secret" value="야호호">
    <button type="submit">등록</button>
</form>

<form>
</form>
    </div>
</body>
</html>
