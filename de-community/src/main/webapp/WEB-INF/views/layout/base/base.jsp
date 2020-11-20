<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/include/taglibs.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<head>
	<title> ASKOS</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
    
    
	<link rel="icon" type="image/png" sizes="16x16" href="">
	<meta property="og:image" content="">
	<!--- 모바일전용이미지 -->
	<link href="/css/common.css" rel="stylesheet">
  

<!-- css -->

<!-- jQuery -->
<script src="/plugins/jquery/jquery.min.js"></script>
<script src="/plugins/jquery/jquery-ui.min.js"></script>
<script src="/plugins/jquery/jquery-migrate-3.0.0.min.js"></script>
<!-- jquery-validation -->
<!--   <script src="/js/jquery.min.js"></script> -->
<script src="/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="/plugins/jquery-validation/additional-methods.min.js"></script>

  <script src="/js/bootstrap.min.js"></script>
  <!-- Bootstrap tether Core JavaScript -->
  <script src="/js/popper.min.js"></script>
  <!-- slimscrollbar scrollbar JavaScript -->
  <script src="/js/perfect-scrollbar.jquery.min.js"></script>
  <!--Menu sidebar -->
  <script src="/js/sidebarmenu.js"></script>
  <!--Custom JavaScript -->
  <script src="/js/custom.min.js"></script>
  <!--farmcontent JavaScript -->
  <script src="/js/content.js"></script>

  <!-- 달력 -->
  <script src="/js/calendar.js"></script>
  <script src="/js/datepicker-ko.js"></script>
<!-- Bootstrap 4 -->
<!-- <script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script> -->
<!-- <script src="/plugins/moment/moment.min.js"></script> -->
<!-- <script src="/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script> -->
<!-- <script src="/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script> -->
<!-- <script src="/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script> -->



</head>


<div id="main-wrapper">
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="left" />
	
	<div class="page-wrapper">
	    <div class="container-fluid">
	        <div class="content-all">
	            <tiles:insertAttribute name="body" />
	            <tiles:insertAttribute name="right" />
	        </div>
	    </div>
	</div>

</div>





<script type="text/javascript">

  function numberWithCommas(x) {
    return x.toString().replace( /\B(?=(\d{3})+(?!\d))/g, "," );
  }
</script>

</body>
</html>



  