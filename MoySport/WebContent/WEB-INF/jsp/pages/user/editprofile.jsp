<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
<title>Мой Спорт</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css" media="screen" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/print.css" media="print" />
</head>
<body>
	<div id="view">
		<jsp:include page="../../templates/header.jsp"/>
		<div id="content">
			<div id="dataBlock">
				<form action="${pageContext.request.contextPath}/pages/user/saveprofile" method="post">
					<table>
						<tr>
							<td valign=top><img src="${pageContext.request.contextPath}/img/aleks.jpg" alt="" class="left shadow" style="border: 0; width: 200px" align="middle" /></td>
							<td width="100%" valign="top">
								<table class="textFont" style="padding: 10px">
									<tr>
										<th class="heading" colspan="2" align="left">Личная информация</th>
									</tr>
									<tr>
										<td class="fldName">Имя:</td>
										<td class="fldText"><input type="text" value="" class="inputText"></td>
									</tr>
									<tr>
										<td class="fldName">Фамилия:</td>
										<td class="fldText"><input type="text" value="" class="inputText"></td>
									</tr>
									<tr>
										<td class="fldName">Телефон:</td>
										<td class="fldText"><input type="text" value="" class="inputText"></td>
									</tr>
									<tr>
										<td class="fldName" colspan="2"><a href="userhome.html"><br>Просмотреть данные</a></td>
									</tr>
									<tr>
										<td class="fldName" colspan="2" align="left"><br>
										<input type="submit" class="submit" value="Сохранить" style="cursor: pointer;"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<jsp:include page="../../templates/cabinet.jsp">
				<jsp:param name="page" value="home" />
			</jsp:include>
		</div>
		<jsp:include page="../../templates/footer.jsp"/>
	</div>
</body>
</html>