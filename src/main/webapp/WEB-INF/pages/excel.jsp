<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Excel</title>
</head>
<body>
<h1>Excel Sheet</h1>

   <form th:action="@{/import}" method="post" enctype="multipart/form-data">
    <input type="file" th:name="file" />
    <input th:type="submit" value="Import" />
</form>
    
</body>
</html>