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
		<jsp:include page="../../templates/header.jsp">
			<jsp:param name="page" value="searchevents" />
		</jsp:include>
		<div id="content">
			<div id="dataBlock">
				<form action="${pageContext.request.contextPath}/pages/events/addevent" method="post">
					<table>
						<tr>
							<td width="100%" valign="top">
								<table class="textFont" style="padding: 10px">
									<tr>
										<th class="heading" colspan="2" align="left">Создание игры</th>
									</tr>
									<tr>
										<td class="fldName">Вид спорта:</td>
										<td class="fldText">
											<select name="sport_type" class="inputText">
												<option selected>Футбол</option>
												<option>Баскетбол</option>
												<option>Хоккей</option>
												<option>Плавание</option>
											</select>${sports.idsport}
										</td>
									</tr>
									<tr>
										<td class="fldName">Max Кол-во участников:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>кол-во участников</td>
									</tr>
									<tr>
										<td class="fldName">Название события:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>${events.name}</td>
									</tr>
									<tr>
										<td class="fldName">Локация:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>${locations.name}</td>
									</tr>
									<tr>
										<td class="fldName">Время начала:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>${eventgames.starttime}</td>
									</tr>
									<tr>
										<td class="fldName">Время окончания:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>${eventgames.endtime}</td>
									</tr>
									<tr>
										<td class="fldName">Комментарии окончания:</td>
										<td class="fldText"><input type="text" value="" class="inputText"/>${eventgames.comments}</td>
									</tr>
									<tr>
										<td class="fldName" colspan="2" align="left"><input type="submit" class="submit" value="Создать" style="cursor: pointer;"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<jsp:include page="../../templates/cabinet.jsp"/>
		</div>
		<jsp:include page="../../templates/footer.jsp"/>
	</div>
</body>
</html>