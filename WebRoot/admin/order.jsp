<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../js/checkform.js">

</script></head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="770" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  <tr>
    <td height="17"><font size="3" >挂号信息列表</font></td>
  </tr>
</table>
<table width="770" border="0" cellpadding="0" cellspacing="0" class="main">
  <tr valign="top">
    <td><form action="" method="post" enctype="multipart/form-data" name="form1">
      <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
        <tr>
          <td class="inputHeader"><table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
<tr>

    
            <td width="13%" align="center" class="inputHeader">医生姓名</td>
            <td width="13%" align="center" class="inputHeader">病人姓名</td>
            <td width="22%" align="center" class="inputHeader">科室</td>
  <td width="22%" align="center" class="inputHeader">时间</td>
            <td width="12%" align="center" class="inputContent">操作</td>
            
        </tr>
        <c:forEach items="${list}" var="list">
        <tr>
                
            <td width="13%" align="center" class="inputHeader">${list.name}</td>
            <td width="13%" align="center" class="inputHeader">${list.truename}</td>
            <td width="22%" align="center" class="inputHeader">${list.type}</td>
   <td width="22%" align="center" class="inputHeader">${list.time}</td>
           <td width="12%" align="center" class="inputContent"><p>&nbsp;&nbsp;<a href="OrderAction?method=deleteOrder&id=${list.id}" onClick="window.confirm('确定删除？')"><img src="picture/delete_item.gif" alt="删除" width="45" height="17" border="0"></a></p></td>
   
        </tr>
        </c:forEach>       
           
              </table></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>




</body>
</html>
