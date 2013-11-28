<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="head">
	<div id="logo">
		<a href="<%= getServletContext().getContextPath()%>/pages/mainpage" class="block">&nbsp;</a>
		<h1><a href="<%= getServletContext().getContextPath()%>/pages/mainpage">Moy<span>Sport</span></a></h1>
		<h2><a href="<%= getServletContext().getContextPath()%>/pages/mainpage">my Hobby, my Passion, my Life</a></h2>
	</div>
	<div id="mainMenu">
		<ul>
			<li <c:if test="${param.page == 'mainpage'}">class="active"</c:if> >
			<a href="<%= getServletContext().getContextPath()%>/pages/mainpage">Главная<span></span></a></li>
			
			<li <c:if test="${param.page == 'searchevents'}">class="active"</c:if> >
			<a href="<%= getServletContext().getContextPath()%>/pages/events/searchevents">Cобытия<span></span></a></li>
			
			<li <c:if test="${param.page == 'searchplayers'}">class="active"</c:if> >
			<a href="<%= getServletContext().getContextPath()%>/pages/players/searchplayers">Игроки<span></span></a></li>
			
			<li <c:if test="${param.page == 'searchlocations'}">class="active"</c:if> >
			<a href="<%= getServletContext().getContextPath()%>/pages/locations/searchlocations">Локации<span></span></a></li>
			
			<li <c:if test="${param.page == 'search'}">class="active"</c:if> >
			<a href="<%= getServletContext().getContextPath()%>/pages/search">Поиск<span></span></a></li>
		</ul>
		<form action="search.html" method="post" id="search">
			<fieldset>
				<input type="text" name="" value="" class="button" /> <input type="submit" value="" class="submit" />
			</fieldset>
		</form>
	</div>
</div>