<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes" />

<!-- 타이틀 -->
<title>sikgu</title>

<!-- css적용 -->
<link href="resources/css/slides.min.css" rel="stylesheet"
	type="text/css">

<link href="resources/css/custom.css" rel="stylesheet" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Compressed Scripts -->
<script src="resources/js/slides.min.js" type="text/javascript"></script>
<!-- Custom Scripts -->
<!-- <script src="js/custom.js" type="text/javascript"></script> -->

<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>
<style>
input[type=text] {
	border-style: none;
	border-bottom: 1px solid #CCC;
	font-size: 16px;
	background-color: transparent;
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 3px 15px 3px 15px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	border: none;
	width: auto;
}

input[type=submit] {
	border: none;
	background-color: transparent;
	background-image: url("resources/assets/img/search.png");
	background-position: 0px 0px;
	background-repeat: no-repeat;
	background-size: cover;
	border: 0px;
	width: 20px;
	height: 20px;
}
</style>
</head>
<body class="slides horizontal simplifiedMobile animated">

	<!-- SVG 아아콘 라이브러리 -->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
  <symbol id="close" viewBox="0 0 30 30">
		<path
			d="M15 0c-8.3 0-15 6.7-15 15s6.7 15 15 15 15-6.7 15-15-6.7-15-15-15zm5.7 19.3c.4.4.4 1 0 1.4-.2.2-.4.3-.7.3s-.5-.1-.7-.3l-4.3-4.3-4.3 4.3c-.2.2-.4.3-.7.3s-.5-.1-.7-.3c-.4-.4-.4-1 0-1.4l4.3-4.3-4.3-4.3c-.4-.4-.4-1 0-1.4s1-.4 1.4 0l4.3 4.3 4.3-4.3c.4-.4 1-.4 1.4 0s.4 1 0 1.4l-4.3 4.3 4.3 4.3z" /></symbol>
  
  <symbol id="close-small" viewBox="0 0 11 11">
		<path
			d="M6.914 5.5l3.793-3.793c.391-.391.391-1.023 0-1.414s-1.023-.391-1.414 0l-3.793 3.793-3.793-3.793c-.391-.391-1.023-.391-1.414 0s-.391 1.023 0 1.414l3.793 3.793-3.793 3.793c-.391.391-.391 1.023 0 1.414.195.195.451.293.707.293s.512-.098.707-.293l3.793-3.793 3.793 3.793c.195.195.451.293.707.293s.512-.098.707-.293c.391-.391.391-1.023 0-1.414l-3.793-3.793z" /></symbol>

  <symbol id="arrow-left" viewBox="0 0 29 56">
		<path
			d="M28.7.3c.4.4.4 1 0 1.4l-26.3 26.3 26.3 26.3c.4.4.4 1 0 1.4-.4.4-1 .4-1.4 0l-27-27c-.4-.4-.4-1 0-1.4l27-27c.3-.3 1-.4 1.4 0z" /></symbol>
  
  <symbol id="arrow-right" viewBox="0 0 29 56">
		<path
			d="M.3 55.7c-.4-.4-.4-1 0-1.4l26.3-26.3-26.3-26.3c-.4-.4-.4-1 0-1.4.4-.4 1-.4 1.4 0l27 27c.4.4.4 1 0 1.4l-27 27c-.3.3-1 .4-1.4 0z" /></symbol>

  <symbol id="back" viewBox="0 0 20 20">
		<path
			d="M2.3 10.7l5 5c.4.4 1 .4 1.4 0s.4-1 0-1.4l-3.3-3.3h11.6c.6 0 1-.4 1-1s-.4-1-1-1h-11.6l3.3-3.3c.4-.4.4-1 0-1.4-.2-.2-.4-.3-.7-.3s-.5.1-.7.3l-5 5c-.2.2-.3.5-.3.7 0 .2.1.5.3.7z" /></symbol>
  
  <symbol id="menu" viewBox="0 0 18 18">
		<path
			d="M16 5h-14c-.6 0-1-.4-1-1 0-.5.4-1 1-1h14c.5 0 1 .4 1 1s-.4 1-1 1zm-14 5h14c.5 0 1-.4 1-1 0-.5-.4-1-1-1h-14c-.6 0-1 .4-1 1s.4 1 1 1zm14 3h-14c-.5 0-1 .4-1 1 0 .5.4 1 1 1h14c.5 0 1-.4 1-1s-.4-1-1-1z" /></symbol>
  
  <symbol id="share" viewBox="0 0 18 18">
		<path
			d="M16 8c-.6 0-1 .4-1 1v6h-12v-6c0-.6-.4-1-1-1s-1 .4-1 1v6c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-6c0-.6-.4-1-1-1zm-2.3-2.3c.4-.4.4-1 0-1.4l-4-4c-.4-.4-1-.4-1.4 0l-4 4c-.4.4-.4 1 0 1.4s1 .4 1.4 0l2.3-2.3v7.6c0 .6.4 1 1 1s1-.4 1-1v-7.6l2.3 2.3c.4.4 1 .4 1.4 0z" /></symbol>

  <symbol id="arrow-down" viewBox="0 0 24 24">
		<path
			d="M12 18c-.2 0-.5-.1-.7-.3l-11-10c-.4-.4-.4-1-.1-1.4.4-.4 1-.4 1.4-.1l10.4 9.4 10.3-9.4c.4-.4 1-.3 1.4.1.4.4.3 1-.1 1.4l-11 10c-.1.2-.4.3-.6.3z" /></symbol>
  
  <symbol id="arrow-up" viewBox="0 0 24 24">
		<path
			d="M11.9 5.9c.2 0 .5.1.7.3l11 10c.4.4.4 1 .1 1.4-.4.4-1 .4-1.4.1l-10.4-9.4-10.3 9.4c-.4.4-1 .3-1.4-.1-.4-.4-.3-1 .1-1.4l11-10c.1-.2.4-.3.6-.3z" /></symbol>
  
  <symbol id="arrow-top" viewBox="0 0 18 18">
		<path
			d="M15.7 7.3l-6-6c-.4-.4-1-.4-1.4 0l-6 6c-.4.4-.4 1 0 1.4.4.4 1 .4 1.4 0l4.3-4.3v11.6c0 .6.4 1 1 1s1-.4 1-1v-11.6l4.3 4.3c.2.2.4.3.7.3s.5-.1.7-.3c.4-.4.4-1 0-1.4z" /></symbol>
  
  <symbol id="play" viewBox="0 0 30 30">
		<path d="M7 30v-30l22 15z" /></symbol>
  
  <symbol id="chat" viewBox="0 0 18 18">
		<path
			d="M5,17c-0.2,0-0.3,0-0.4-0.1C4.2,16.7,4,16.4,4,16v-2H2c-1.1,0-2-0.9-2-2V3c0-1.1,0.9-2,2-2h14c1.1,0,2,0.9,2,2v9 c0,1.1-0.9,2-2,2H9.3l-3.7,2.8C5.4,16.9,5.2,17,5,17z M2,12h3.5C5.8,12,6,12.2,6,12.5V14l2.4-1.8C8.6,12.1,8.8,12,9,12h7V3H2V12z M13,7H5C4.4,7,4,6.6,4,6s0.4-1,1-1h8c0.6,0,1,0.4,1,1S13.6,7,13,7z M13,10H5c-0.6,0-1-0.4-1-1s0.4-1,1-1h8c0.6,0,1,0.4,1,1 S13.6,10,13,10z" /></symbol>

  <symbol id="mail" viewBox="0 0 18 18">
		<path
			d="M16 2h-14c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-10c0-1.1-.9-2-2-2zm0 2v.5l-7 4.3-7-4.4v-.4h14zm-14 10v-7.2l6.5 4c.1.1.3.2.5.2s.4-.1.5-.2l6.5-4v7.2h-14z" /></symbol>

  <symbol id="sound-on" viewBox="0 0 18 18">
		<path
			d="M8.5,0.1C8.1-0.1,7.7,0,7.4,0.2L3.7,3H2C0.9,3,0,3.9,0,5v6c0,1.1,0.9,2,2,2h1.7l3.7,2.8C7.6,15.9,7.8,16,8,16 c0.2,0,0.3,0,0.4-0.1C8.8,15.7,9,15.4,9,15V1C9,0.6,8.8,0.3,8.5,0.1z M7,13l-2.4-1.8C4.4,11.1,4.2,11,4,11l-2,0l0-6h2 c0.2,0,0.4-0.1,0.6-0.2L7,3V13z M11.7,9.9l0.7,1.9C13.9,11.2,15,9.7,15,8c0-1.7-1.1-3.2-2.7-3.8l-0.7,1.9C12.5,6.4,13,7.2,13,8C13,8.9,12.5,9.6,11.7,9.9z M12.2,1.1l-0.3,2C14.3,3.5,16,5.6,16,8s-1.8,4.5-4.2,4.9l0.3,2C15.6,14.3,18,11.4,18,8C18,4.6,15.6,1.7,12.2,1.1z" /></symbol>
  
  <symbol id="sound-off" viewBox="0 0 18 18">
		<path
			d="M15.9,8l1.8-1.8c0.4-0.4,0.4-1,0-1.4s-1-0.4-1.4,0l-1.8,1.8l-1.8-1.8c-0.4-0.4-1-0.4-1.4,0s-0.4,1,0,1.4L13.1,8l-1.8,1.8 c-0.4,0.4-0.4,1,0,1.4c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3l1.8-1.8l1.8,1.8c0.2,0.2,0.5,0.3,0.7,0.3s0.5-0.1,0.7-0.3 c0.4-0.4,0.4-1,0-1.4L15.9,8z M8.5,0.1C8.1-0.1,7.7,0,7.4,0.2L3.7,3H2C0.9,3,0,3.9,0,5v6c0,1.1,0.9,2,2,2h1.7l3.7,2.8C7.6,15.9,7.8,16,8,16 c0.2,0,0.3,0,0.4-0.1C8.8,15.7,9,15.4,9,15V1C9,0.6,8.8,0.3,8.5,0.1z M7,13l-2.4-1.8C4.4,11.1,4.2,11,4,11l-2,0l0-6h2 c0.2,0,0.4-0.1,0.6-0.2L7,3V13z" /></symbol>
  
  <!-- social -->
  <symbol id="apple" viewBox="-1 1 24 24">
		<path
			d="M17.6 13.8c0-3 2.5-4.5 2.6-4.6-1.4-2.1-3.6-2.3-4.4-2.4-1.9-.2-3.6 1.1-4.6 1.1-.9 0-2.4-1.1-4-1-2 0-3.9 1.2-5 3-2.1 3.7-.5 9.1 1.5 12.1 1 1.5 2.2 3.1 3.8 3 1.5-.1 2.1-1 3.9-1s2.4 1 4 1 2.7-1.5 3.7-2.9c1.2-1.7 1.6-3.3 1.7-3.4-.1-.1-3.2-1.3-3.2-4.9zm-3.1-9c.8-1 1.4-2.4 1.2-3.8-1.2 0-2.7.8-3.5 1.8-.8.9-1.5 2.3-1.3 3.7 1.4.1 2.8-.7 3.6-1.7z" /></symbol>

  <symbol id="dribbble" viewBox="0 0 24 24">
		<path
			d="M12 0c-6.7 0-12 5.3-12 12s5.3 12 12 12 12-5.3 12-12-5.3-12-12-12zm7.9 5.7c1.3 1.7 2.1 3.9 2.3 6.1-.4-.1-2.4-.4-4.7-.4-.8 0-1.5 0-2.3.1 0-.1-.1-.3-.3-.5l-.7-1.5c3.7-1.4 5.3-3.4 5.7-3.8zm-7.9-3.8c2.5 0 4.9.9 6.7 2.5-.3.4-1.9 2.3-5.2 3.6-1.6-2.9-3.3-5.3-3.7-5.9.6-.1 1.4-.2 2.2-.2zm-4.4 1c.4.6 2.1 3 3.7 5.8-4.4 1.2-8.2 1.2-9.2 1.2h-.1c.8-3.1 2.9-5.6 5.6-7zm-5.7 9.1v-.3h.3c1.2 0 5.6-.1 10.1-1.5l.8 1.6c-.1 0-.3 0-.4.1-5.1 1.6-7.9 6-8.3 6.7-1.6-1.7-2.5-4.1-2.5-6.6zm10.1 10.1c-2.3 0-4.4-.8-6.1-2.1.3-.5 2.4-4.4 7.9-6.3 1.3 3.6 2 6.7 2.1 7.6-1.2.6-2.6.8-3.9.8zm5.7-1.8c-.1-.8-.7-3.6-2-7.1.7-.1 1.3-.1 2-.1 2.1 0 3.7.4 4.1.5-.3 2.8-1.8 5.2-4.1 6.7z" /></symbol>

  <symbol id="facebook" viewBox="0 0 24 24">
		<path
			d="M24 1.3v21.3c0 .7-.6 1.3-1.3 1.3h-6.1v-9.3h3.1l.5-3.6h-3.6v-2.2c0-1.1.3-1.8 1.8-1.8h1.9v-3.2c-.3 0-1.5-.1-2.8-.1-2.8 0-4.7 1.7-4.7 4.8v2.7h-3.1v3.6h3.1v9.2h-11.5c-.7 0-1.3-.6-1.3-1.3v-21.4c0-.7.6-1.3 1.3-1.3h21.3c.8 0 1.4.6 1.4 1.3z" /></symbol>

  <symbol id="facebook2" viewBox="0 0 512 512">
		<path
			d="M288 176v-64c0-17.664 14.336-32 32-32h32v-80h-64c-53.024 0-96 42.976-96 96v80h-64v80h64v256h96v-256h64l32-80h-96z" /></symbol>
   
  <symbol id="fb-like" viewBox="0 0 20 20">
		<path
			d="M0 8v12h5v-12h-5zm2.5 10.8c-.4 0-.8-.3-.8-.8 0-.4.3-.8.8-.8s.8.3.8.8c0 .4-.4.8-.8.8zm3.5-.8h9.5c1.1 0 1.7-1 1.7-1.7 0-.3-.4-1-.4-1 1.4-.3 1.7-1.2 1.7-1.7-.1-.5-.3-.9-.5-1 1-.4 1.5-1.1 1.4-1.9-.1-.8-1-1.5-1-1.5 1-.6.9-1.5.9-1.5-.3-1.3-1.5-1.7-1.7-1.7h-5.6s.3-.5.3-2.4-1.3-3.6-2.6-3.6c0 0-.7.1-1 .3v3.5l-2.7 4.4v9.8z" /></symbol>
  
  <symbol id="googlePlus" viewBox="0 1 24 24">
		<path
			d="M7.8 13.5h4.6c-.6 2-2.5 3.4-4.6 3.4-2.7 0-4.9-2.2-4.9-4.9s2.2-4.9 4.9-4.9c1.1 0 2.1.3 3 1l1.8-2.4c-1.4-1.1-3-1.6-4.8-1.6-4.3 0-7.9 3.5-7.9 7.9s3.5 7.9 7.9 7.9 7.9-3.5 7.9-7.9v-1.5h-7.9v3zM21.7 11v-2.2h-2v2.2h-2.2v2h2.2v2.2h2v-2.2h2.2v-2z" /></symbol>
  
  <symbol id="instagram" viewBox="0 0 20 20">
		<circle cx="10" cy="10" r="3.3" />
		<path
			d="M13,0H7C2.2,0,0,2.2,0,7v6c0,4.8,2.1,7,7,7h6c4.8,0,7-2.2,7-7V7C20,2.2,17.9,0,13,0z M10,15.1c-2.8,0-5.1-2.3-5.1-5.1 S7.2,4.9,10,4.9s5.1,2.3,5.1,5.1S12.8,15.1,10,15.1z M15.3,5.9c-0.7,0-1.2-0.5-1.2-1.2c0-0.7,0.5-1.2,1.2-1.2s1.2,0.5,1.2,1.2 C16.5,5.3,16,5.9,15.3,5.9z" /></symbol>

  <symbol id="behance" viewBox="0 0 511.958 511.958">
		<path
			d="M210.624 240.619c10.624-5.344 18.656-11.296 24.16-17.728 9.792-11.584 14.624-26.944 14.624-45.984 0-18.528-4.832-34.368-14.496-47.648-16.128-21.632-43.424-32.704-82.016-33.28h-152.896v312.096h142.56c16.064 0 30.944-1.376 44.704-4.192 13.76-2.848 25.664-8.064 35.744-15.68 8.96-6.624 16.448-14.848 22.4-24.544 9.408-14.656 14.112-31.264 14.112-49.76 0-17.92-4.128-33.184-12.32-45.728-8.288-12.544-20.448-21.728-36.576-27.552zm-147.552-90.432h68.864c15.136 0 27.616 1.632 37.408 4.864 11.328 4.704 16.992 14.272 16.992 28.864 0 13.088-4.32 22.24-12.864 27.392-8.608 5.152-19.776 7.744-33.472 7.744h-76.928v-68.864zm108.896 198.24c-7.616 3.68-18.336 5.504-32.064 5.504h-76.832v-83.232h77.888c13.568.096 24.128 1.888 31.68 5.248 13.44 6.08 20.128 17.216 20.128 33.504 0 19.2-6.912 32.128-20.8 38.976zM327.168 110.539h135.584v38.848h-135.584zM509.856 263.851c-2.816-18.08-9.024-33.984-18.688-47.712-10.592-15.552-24.032-26.944-40.384-34.144-16.288-7.232-34.624-10.848-55.04-10.816-34.272 0-62.112 10.72-83.648 32-21.472 21.344-32.224 52.032-32.224 92.032 0 42.656 11.872 73.472 35.744 92.384 23.776 18.944 51.232 28.384 82.4 28.384 37.728 0 67.072-11.232 88.032-33.632 13.408-14.144 20.992-28.064 22.656-41.728h-62.464c-3.616 6.752-7.808 12.032-12.608 15.872-8.704 7.04-20.032 10.56-33.92 10.56-13.216 0-24.416-2.912-33.76-8.704-15.424-9.28-23.488-25.536-24.512-48.672h170.464c.256-19.936-.384-35.264-2.048-45.824zm-166.88 5.984c2.24-15.008 7.68-26.912 16.32-35.712 8.64-8.768 20.864-13.184 36.512-13.216 14.432 0 26.496 4.128 36.32 12.416 9.696 8.352 15.168 20.48 16.288 36.512h-105.44z" /></symbol>
  
  <symbol id="linkedin" viewBox="0 0 24 24">
		<path
			d="M5.9 21.9h-4.7v-14.2h4.7v14.2zm-2.3-16.1c-1.6 0-2.6-1.1-2.6-2.5s1-2.5 2.7-2.5c1.6 0 2.6 1 2.6 2.5-.1 1.4-1.2 2.5-2.7 2.5zm19.2 16.1h-4.7v-7.6c0-2-.7-3.3-2.3-3.3-1.3 0-2.1.9-2.5 1.7-.1.3-.1.8-.1 1.2v7.9h-4.7v-14.1h4.7v2c.7-.9 1.7-2.3 4.3-2.3 3.1 0 5.5 2.1 5.5 6.4v8.2h-.2z" /></symbol>

  <symbol id="medium" viewBox="0 0 130.8 104">
		<path
			d="M15.5 21.2c.2-1.6-.5-3.2-1.7-4.3l-12.1-14.7v-2.2h38l29.3 64.4 25.8-64.4h36.2v2.2l-10.5 10c-.9.7-1.3 1.8-1.2 2.9v73.7c0 1.1.3 2.2 1.2 2.9l10.2 10v2.2h-51.3v-2.2l10.6-10.2c1-1 1-1.3 1-2.9v-59.6l-29.4 74.7h-4l-34.2-74.7v50.3c0 2.2.4 4.2 1.9 5.7l13.7 16.8v2.2h-39v-2.2l13.8-16.7c1.5-1.5 1.8-3.3 1.8-5.7l-.1-58.2z" /></symbol>
  
  <symbol id="pinterest" viewBox="0 0 24 24">
		<path
			d="M5.9 13.9c1.2-2-.4-2.5-.6-4-1-6.1 7.1-10.2 11.4-6 2.9 2.9 1 12-3.7 11-4.6-.9 2.2-8.1-1.4-9.5-3-1.1-4.6 3.6-3.2 5.9-.8 4-2.5 7.7-1.8 12.7 2.3-1.7 3.1-4.8 3.7-8.1 1.2.7 1.8 1.4 3.3 1.5 5.5.4 8.6-5.4 7.8-10.7-.7-4.7-5.5-7.1-10.6-6.6-4.1.4-8.1 3.7-8.3 8.3-.1 2.8.7 4.9 3.4 5.5z" /></symbol>
  
  <symbol id="stumbleupon" viewBox="0 0 24 24">
		<path
			d="M13.3 9.6l1.6.8 2.5-.8v-1.4c0-3-2.4-5.4-5.4-5.4s-5.4 2.4-5.4 5.4v7.5c0 .7-.6 1.3-1.3 1.3s-1.3-.6-1.3-1.3v-3.2h-4v3.2c0 3 2.4 5.4 5.4 5.4s5.4-2.4 5.4-5.4v-7.5c0-.7.6-1.3 1.3-1.3s1.3.6 1.3 1.3l-.1 1.4zm6.6 2.9v3.2c0 .7-.6 1.3-1.3 1.3s-1.3-.6-1.3-1.3v-3.2l-2.5.8-1.6-.8v3.2c0 3 2.4 5.4 5.4 5.4s5.4-2.4 5.4-5.4v-3.2h-4.1z" /></symbol>
  
  <symbol id="twitter" viewBox="0 1 24 23">
		<path
			d="M21.5 7.6v.6c0 6.6-5 14.1-14 14.1-2.8 0-5.4-.8-7.6-2.2l1.2.1c2.3 0 4.4-.8 6.1-2.1-2.2 0-4-1.5-4.6-3.4.3.1.6.1.9.1.5 0 .9-.1 1.3-.2-2.1-.6-3.8-2.6-3.8-5 .7.4 1.4.6 2.2.6-1.3-.9-2.2-2.4-2.2-4.1 0-.9.2-1.8.7-2.5 2.4 3 6.1 5 10.2 5.2-.1-.4-.1-.7-.1-1.1 0-2.7 2.2-5 4.9-5 1.4 0 2.7.6 3.6 1.6 1-.3 2.1-.7 3-1.3-.4 1.2-1.1 2.1-2.2 2.7 1-.1 1.9-.4 2.8-.8-.6 1.1-1.4 2-2.4 2.7z" /></symbol>
  
  <symbol id="tumblr" viewBox="0 0 23 23">
		<path
			d="M12.573 4.94v-4.94h-3.188c-.072.183-.11.4-.11.622-.034.107-.072.184-.072.293-.328 1.829-1.28 3.11-2.892 3.807-.476.218-.914.253-1.39.218v3.987h2.342c.039 5.603.039 8.493.039 8.64v.332c.294 2.449 1.573 3.914 3.843 4.463.914.257 1.901.366 2.892.366 1.279-.036 2.525-.256 3.771-.659v-4.685c-.731.22-1.395.402-1.977.583-1.135.333-2.087.113-2.857-.619-.073-.11-.183-.257-.221-.403-.106-.586-.178-1.206-.178-1.795v-6.222h5.083v-3.988h-5.085z" /></symbol>

  <symbol id="xing" viewBox="0 0 24 24">
		<path
			d="M3.647 4.74c-.208 0-.384.073-.472.216-.091.148-.077.338.02.531l2.34 4.051v.02l-3.678 6.49c-.096.191-.091.383 0 .531.088.142.244.236.452.236h3.461c.518 0 .767-.349.944-.669l3.737-6.608-2.38-4.15c-.172-.307-.433-.649-.964-.649h-3.46zm14.542-4.74c-.517 0-.741.326-.927.659l-7.702 13.658 4.918 9.023c.172.307.437.659.967.659h3.457c.208 0 .371-.079.459-.221.092-.148.09-.343-.007-.535l-4.88-8.915v-.023l7.664-13.551c.096-.191.098-.386.007-.534-.088-.142-.252-.221-.46-.221h-3.496z" /></symbol>

  <symbol id="whatsapp" viewBox="0 0 512 512">
		<path
			d="M256.064 0h-.128c-141.152 0-255.936 114.816-255.936 256 0 56 18.048 107.904 48.736 150.048l-31.904 95.104 98.4-31.456c40.48 26.816 88.768 42.304 140.832 42.304 141.152 0 255.936-114.848 255.936-256s-114.784-256-255.936-256zm148.96 361.504c-6.176 17.44-30.688 31.904-50.24 36.128-13.376 2.848-30.848 5.12-89.664-19.264-75.232-31.168-123.68-107.616-127.456-112.576-3.616-4.96-30.4-40.48-30.4-77.216s18.656-54.624 26.176-62.304c6.176-6.304 16.384-9.184 26.176-9.184 3.168 0 6.016.16 8.576.288 7.52.32 11.296.768 16.256 12.64 6.176 14.88 21.216 51.616 23.008 55.392 1.824 3.776 3.648 8.896 1.088 13.856-2.4 5.12-4.512 7.392-8.288 11.744-3.776 4.352-7.36 7.68-11.136 12.352-3.456 4.064-7.36 8.416-3.008 15.936 4.352 7.36 19.392 31.904 41.536 51.616 28.576 25.44 51.744 33.568 60.032 37.024 6.176 2.56 13.536 1.952 18.048-2.848 5.728-6.176 12.8-16.416 20-26.496 5.12-7.232 11.584-8.128 18.368-5.568 6.912 2.4 43.488 20.48 51.008 24.224 7.52 3.776 12.48 5.568 14.304 8.736 1.792 3.168 1.792 18.048-4.384 35.52z" /></symbol>
  
  <symbol id="youtube" viewBox="0 0 24 24">
		<path
			d="M23.6 6.3c-.3-1.2-1.4-2.2-2.6-2.3-3-.3-6-.3-9-.3s-6 0-9 .3c-1.2.1-2.3 1.1-2.6 2.3-.4 1.8-.4 3.8-.4 5.7 0 1.9 0 3.9.4 5.7.3 1.2 1.4 2.2 2.6 2.3 3 .3 6 .3 9 .3s6 0 9-.3c1.3-.1 2.3-1.1 2.6-2.4.4-1.7.4-3.7.4-5.6 0-1.9 0-3.9-.4-5.7zm-14.1 9v-6.6l6.5 3.3-6.5 3.3z" /></symbol>

</svg>

	<!-- 상단 -->
	<nav class="panel top">
		<!-- 로고-->
		<div class="sections desktop">
			<div class="left">
				<a href="#"> <img class="img-responsive"
					src="resources/assets/img/logoW.png" alt="logo"
					style="width: 100px; height: auto">
				</a>
			</div>
			<!-- 검색어 -->
			<div class="center">
				<form id="form1" action="" class="menu">
					<input type="text" name="search" placeholder="검색어를 입력하세요.">
					<input type="submit" value="">
				</form>
			</div>
			<!-- 회원 상세정보 메뉴 -->
			<div class="right">
				<span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg>
						<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span>
			</div>
		</div>
	</nav>

	<!-- 회원 상세정보의 메뉴 상세-->
	<nav class="sidebar" data-sidebar-id="1"
		style="background-color: #D97E8E; height: auto;">
		<!-- 닫혀있을때 그 메뉴모양만 나타나게함 -->
		<div class="close">
			<svg>
				<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg>
		</div>
		<!-- 열려있을때 -->
		<div class="content">
			<div>
				<a href="#"><i class="fas fa-user"
					style="width: 37; height: 30;">----님</i></a>
			</div>
			<div>
				<a href="#"><i class="fas fa-cog"></i></a>
			</div>
			<ul class="mainMenu margin-top-3">
				<li><a href="#">MY LIST</a>
					<ul class="userul">
						<li class="userli"><img class="ae-4" width="50"
							src="resources/assets/img/iphones-34.png" /></li>

					</ul></li>

			</ul>
			<ul class="mainMenu margin-top-3">

				<li><a href="#">MY REVIEW</a>
					<ul class="userul">
						<li class="userli"><img class="ae-4" width="50"
							src="resources/assets/img/iphones-34.png" /></li>

					</ul></li>

			</ul>
			<ul class="margin-top-5 opacity-8">
				<li><a href="#" style="float: right"><svg
							style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#facebook"></use></svg></a></li>
				<li><a href="#" style="float: right"> <svg
							style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#twitter"></use></svg></a></li>
				<li><a href="#" style="float: right"><svg
							style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#instagram"></use></svg></a></li>
			</ul>
		</div>
	</nav>

	<!-- Slide 1 (#34) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap top">
					<div class="center">
						<span class="prevSlide"><i class="fas fa-caret-left fa-3x"></i></span>
						<h2 style="display: -webkit-inline-box;">&nbsp;강남구&nbsp;</h2>
						<span class="nextSlide"><i class="fas fa-caret-right fa-3x"></i></span>
					</div>
					<div style="display: flex;">
						<div class="mfix-2-12">그래프 1</div>
						<div class="mfix-7-12">
						<div style="float:right">
							<button onclick="zoomIn()">
								<i class="fa fa-search-plus" aria-hidden="true"></i>
							</button>
							<button onclick="zoomDef()">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
							</button>
							<button onclick="zoomOut()">
								<i class="fa fa-search-minus" aria-hidden="true"></i>
							</button>
							</div>
						<div class="mfix-7-12" id="map" style="height:500px"></div>
							
						</div>
						<div class="mfix-2-12">그래프 2</div>
					</div>
					
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11385b89f73bcc9d4dc2406ea538f4b9"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 5

						// 지도의 확대 레벨
						};

						var map = new kakao.maps.Map(mapContainer, mapOption);

						map.setZoomable(false);
						if (navigator.geolocation) {

							// GeoLocation을 이용해서 접속 위치를 얻어옵니다
							navigator.geolocation
									.getCurrentPosition(function(position) {

										var lat = position.coords.latitude, // 위도
										lon = position.coords.longitude; // 경도

										var locPosition = new kakao.maps.LatLng(
												lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
										message = '<div style="padding:5px;">내 위치!</div>'; // 인포윈도우에 표시될 내용입니다

										// 마커와 인포윈도우를 표시합니다
										displayMarker(locPosition, message);

									});

						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

							var locPosition = new kakao.maps.LatLng(33.450701,
									126.570667), message = 'geolocation을 사용할수 없어요..'

							displayMarker(locPosition, message);
						}

						// 지도에 마커와 인포윈도우를 표시하는 함수입니다
						function displayMarker(locPosition, message) {

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : locPosition
							});

							var iwContent = message, // 인포윈도우에 표시할 내용
							iwRemoveable = true;

							// 인포윈도우를 생성합니다
							var infowindow = new kakao.maps.InfoWindow({
								content : iwContent,
								removable : iwRemoveable
							});

							// 인포윈도우를 마커위에 표시합니다 
							infowindow.open(map, marker);

							// 지도 중심좌표를 접속위치로 변경합니다
							map.setCenter(locPosition);
						}
						function zoomIn() {
							map.setLevel(2);
						}

						function zoomOut() {
							map.setLevel(7);
						}
						function zoomDef() {
							map.setLevel(5);
						}
					</script>
				
				</div>
			</div>
			
					<section class="portfolio-static">

			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon classic pull-left"><i
							class="fa fa-map-marker" aria-hidden="true"></i></span>
						<h2 class="title classic">최근 핫한 상권</h2>
					</div>
				</div>
				<!-- Title row end -->

			</div>

			<div class="container">
				<div class="row">
					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio1.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>염창동</h3>
								<span><a href="#">서울 강서구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 1 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio2.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>가양동</h3>
								<span><a href="#">서울 강서구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 2 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio3.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg3.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>용신동</h3>
								<span><a href="#">서울 동대문구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 3 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio4.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>가락동</h3>
								<span><a href="#">서울 송파구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 4 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio5.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>석촌동</h3>
								<span><a href="#">서울 송파구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 5 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio6.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg3.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>잠실동</h3>
								<span><a href="#">서울 송파구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 6 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio7.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>역삼동</h3>
								<span><a href="#">서울 강남구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 7 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="effect-oscar">
								<img src="resources/images/portfolio/portfolio8.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-link"></i></a> <a class=""
										data-rel="prettyPhoto"
										href="resources/images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>삼성동</h3>
								<span><a href="#">서울 강남구</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 8 end -->

				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		</section>
		
			
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-01.jpg)"></div>
	</section>


	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">
					<div class="left">
						<span class="prevSlide"><i class="fas fa-angle-left"></i></span>
					</div>
					<div class="right">
						<span class="nextSlide"><i class="fas fa-angle-right"></i></span>
					</div>
					<div class="fix-12-12">
						<ul class="flex fixedSpaces verticalCenter reverse">
							<li class="col-6-12 left middle">
								<h1 class="ae-1 fromLeft">Designers are meant to be loved,
									not to be understood.</h1>hghjkhghj
								<p class="ae-2 fromLeft">
									<span class="opacity-8">The sudden hunch, the creative
										leap of mind that “sees” in a flash how to solve a problem in
										a simple way, is something quite&nbsp;different.</span>
								</p> <a class="button blue gradient ae-3 fromCenter cropLeft">Get
									Started</a><a class="button white ae-4 fromCenter">Learn more</a>
							</li>
							<li class="col-6-12"><img class="ae-4" width="605"
								src="resources/assets/img/iphones-34.png"
								alt="iPhones Thumbnail" data-action="zoom" /></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-01.jpg)"></div>
	</section>

	<!-- Slide 2 (#60) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-12-12">
						<ul class="grid">
							<li class="col-6-12 left">
								<h1 class="ae-2 fromLeft">Krabi Island</h1>
								<p class="ae-3 fromLeft">
									<span class="opacity-8">An electrician isn’t an opinion
										former, but a graphic designer is. My argument is that all
										graphic designers hold high levels of responsibility in
										society.</span>
								</p>
								<ul class="tabs controller uppercase bold ae-4 fromCenter"
									data-slider-id="60-1">
									<li class="selected">Krabi Island</li>
									<li>Community</li>
									<li>Surfing</li>
								</ul>
							</li>
							<li class="col-6-12 left ae-5 fromCenter">
								<ul class="slider animated margin-top-4" data-slider-id="60-1">
									<li class="selected fromCenter">
										<div class="popupTrigger videoThumbnail shadow rounded"
											data-popup-id="60-1">
											<img class="wide" src="resources/assets/img/gallery-60-1.jpg"
												alt="Video Thumbnail" />
										</div>
									</li>
									<li class="fromCenter">
										<div class="popupTrigger videoThumbnail shadow rounded"
											data-popup-id="60-2">
											<img class="wide" src="resources/assets/img/gallery-60-2.jpg"
												alt="Video Thumbnail" />
										</div>
									</li>
									<li class="fromCenter">
										<div class="popupTrigger videoThumbnail shadow rounded"
											data-popup-id="60-3">
											<img class="wide" src="resources/assets/img/gallery-60-3.jpg"
												alt="Video Thumbnail" />
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-60.jpg)"></div>
	</section>



	<!-- Slide 4 (#26) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-12-12">
						<ul class="flex reverse verticalCenter">
							<li class="col-7-12 left cell-26">
								<h1 class="ae-1 fromLeft">How we work</h1>
								<div class="ae-2 fromLeft">
									<p class="opacity-8">An electrician isn't an opinion
										former, but a graphic designer is. My argument is that all
										graphic designers hold high levels of responsibility
										in&nbsp;society.</p>
								</div>
								<div class="relative">
									<img src="resources/assets/img/icon-1.png"
										class="ae-3 fromCenter app-26" alt="app" />
									<div class="text-26">
										<h3 class="ae-3 fromRight">Ember for Apple Watch</h3>
										<div class="ae-5 fromRight">
											<p class="tiny opacity-6">
												People don&rsquo;t use a product<br>because of the
												great&nbsp;design.
											</p>
										</div>
									</div>
								</div>
							</li>
							<li class="col-5-12">
								<div class="fix-4-12 center">
									<ul class="slider clickable ae-1 fromAbove"
										data-slider-id="26-3">
										<li class="selected"><img
											src="resources/assets/img/watch-26-1.png"
											alt="Apple Watch Thumbnail" /></li>
										<li><img src="resources/assets/img/watch-26-2.png"
											alt="Apple Watch Thumbnail" /></li>
										<li><img src="resources/assets/img/watch-26-1.png"
											alt="Apple Watch Thumbnail" /></li>
										<li><img src="resources/assets/img/watch-26-2.png"
											alt="Apple Watch Thumbnail" /></li>
									</ul>
									<ul class="controller dots ae-3 fromCenter margin-top-3"
										data-slider-id="26-3">
										<li class="dot selected"></li>
										<li class="dot"></li>
										<li class="dot"></li>
										<li class="dot"></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-26.jpg)"></div>
	</section>


	<!-- Slide 6 (#83) -->
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container">
				<div class="wrap">

					<div class="fix-10-12">
						<h1 class="ae-1">Pricing</h1>
						<ul class="grid grid-83 noSpaces equal ae-2 fadeIn">
							<li class="col-4-12 ae-3" style="background: #F5FBFE">
								<h3>Moon</h3>
								<div class="price ae-5">
									<span class="currency">$</span>0
								</div>
								<div class="ae-5">
									<h6 class="uppercase bold small opacity-4">No Credit Card
										Needed</h6>
								</div>
								<div class="margin-top-3 margin-bottom-3 equalElement ae-6">
									<ul class="p tiny">
										<li><strong>25 Free Images</strong></li>
										<li class="opacity-7">Custom Domain</li>
										<li class="opacity-7">24/7 Customer Support</li>
									</ul>
								</div> <a href="#"
								class="button blue gradient wide cropSides cropBottom ae-7">Try
									Free</a>
							</li>
							<li class="col-4-12 ae-4">
								<h3>Planet</h3>
								<div class="price ae-6">
									<span class="currency">$</span>6
								</div>
								<div class="ae-6">
									<h6 class="uppercase bold small opacity-4">Billed per
										Month</h6>
								</div>
								<div class="margin-top-3 margin-bottom-3 equalElement ae-7">
									<ul class="p tiny">
										<li><strong>60 Free Images</strong></li>
										<li><strong>Mobile-Optimized</strong></li>
										<li><strong>No Transaction Fees</strong></li>
										<li class="opacity-8">Custom Domain</li>
										<li class="opacity-8">24/7 Customer Support</li>
									</ul>
								</div> <a href="#"
								class="button green gradient wide cropSides cropBottom ae-8">Purchase</a>
							</li>
							<li class="col-4-12 ae-5">
								<h3>Galaxy</h3>
								<div class="price ae-7">
									<span class="currency">$</span>24
								</div>
								<div class="ae-7">
									<h6 class="uppercase bold small opacity-4">Billed per
										Month</h6>
								</div>
								<div class="margin-top-3 margin-bottom-3 equalElement ae-8">
									<ul class="p tiny">
										<li><strong>60 Free Images</strong></li>
										<li><strong>Mobile-Optimized</strong></li>
										<li><strong>No Transaction Fees</strong></li>
										<li><strong>Unlimited Projects</strong></li>
										<li class="opacity-8">Custom Domain</li>
										<li class="opacity-8">24/7 Customer Support</li>
									</ul>
								</div> <a href="#"
								class="button green gradient wide cropSides cropBottom ae-9">Purchase</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-83.jpg)"></div>
	</section>


	<!-- Panel Bottom #01 -->
	<nav class="panel bottom forceMobileView">
		<div class="sections desktop">
			<div class="left">
				<a href="#" class="opacity-8">Available <svg
						style="height: 21px;">
						<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#apple"></use></svg> iPhone
				</a>
			</div>

			<div class="right">
				<span data-dropdown-id="2"
					class="button actionButton dropdownTrigger"><svg>
						<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#share"></use></svg></span>
			</div>
		</div>
		<div class="sections compact hidden">
			<div class="right">
				<span data-dropdown-id="2"
					class="button actionButton dropdownTrigger"><svg>
						<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#share"></use></svg></span>
			</div>
		</div>
	</nav>


	<!-- Loading Progress Bar -->
	<div class="progress-bar blue"></div>

</body>
</html>
