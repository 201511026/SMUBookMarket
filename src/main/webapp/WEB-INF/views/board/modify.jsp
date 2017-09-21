<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp" %>
	
	<form role = "form" method = "post">
		<div class = "box-body">
			<div class = "form-group">
				<label for = "exampleInputEmail1">BNO</label>
				<input type = "text" name = "bno" class = "form-control" value = "${boardVO.bno}" readonly = "readonly">
			</div>
			
			<div class = "form-group">
				<label for = "exampleInputEmail1">Title</label>
				<input type = "text" name = "title" class = "form-control" value = "${boardVO.title}">
			</div>
			
			<div class = "form-group">
				<label for = "exampleInputPassword1">Content</label>
				<textarea class = "form-control" name = "content" rows = "3">${boardVO.content}</textarea>
			</div>
			
			<div class = "form-group">
				<label for = "exampleInputEmail1">Writer</label>
				<input type = "text" name = "writer" class = "form-control" value = "${boardVO.writer}" readonly = "readonly"> <!--  writer는 수정안됨..그래서 readonly써줌-->
			</div>
		</div>
		<!-- /.box-body -->
	</form>
	
	
	<div class = "box-footer">
		<button type="submit" class = "btn btn-primary">SAVE</button>
		<button type="submit" class = "btn btn-warning">CANCEL</button>
	</div>
	
<%@include file="footer.jsp" %>


<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
   $(document).ready(function(){
      
      var formObj = $("form[role='form']");//formObj는 위에 선언된 <form>을 의미하게 됨.
      
      console.log(formObj);
      
      $(".btn-warning").on("click", function(){//수정할 수 있는 페이지로 이동하도록 위의 <form>태그 속성을 수정하고 전송함.
    	  self.location = "/board/listAll";    //class가 btn-waring인걸 클릭하면 페이지 이동!
      });
      
      $(".btn-primary").on("click", function(){
    	  formObj.submit();
      });
   });

</script>
	
