<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header.jsp" %>

<form role="form" method="post">
   <input type='hidden' name='bno' value="${boardVO.bno}">
</form>

<div class="box-body">
   <div class="form-group">
      <label for="exampleInputEmail1">Title</label> 
      <input type="text" name='title' class="form-control" value="${boardVO.title}" readonly="readonly">
   </div>
   <div class="form-group">
      <label for="exampleInputPassword1">Content</label>
      <textarea class="form-control" name="content" rows="3" readonly="readonly">${boardVO.content}</textarea>
   </div>
   <div class="form-group">
      <label for="exampleInputEmail1">Writer</label> 
      <input type="text" name='writer' class="form-control" value="${boardVO.writer}" readonly="readonly">
   </div>
</div>
<!-- /.box-body -->

<div class="box-footer">
   <button type="submit" class="btn btn-warning">Modify</button>
   <button type="submit" class="btn btn-danger">REMOVE</button>
   <button type="submit" class="btn btn-primary">LIST ALL</button>
</div>

<%@include file="footer.jsp" %>

<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
   $(document).ready(function(){
      
      var formObj = $("form[role='form']");//formObj는 위에 선언된 <form>을 의미하게 됨.
      
      console.log(formObj);
      
      $(".btn-warning").on("click", function(){//수정할 수 있는 페이지(modify.jsp)로 이동하도록 위의 <form>태그 속성을 수정하고 전송함.
         formObj.attr("action", "/board/modify");
         formObj.attr("method", "get");
         formObj.submit();
      });
      
      $(".btn-danger").on("click", function(){
         formObj.attr("action", "/board/remove");
         formObj.submit();
      });
      
      $(".btn-primary").on("click", function(){
         self.location = "/board/listAll";
      });
   });

</script>
