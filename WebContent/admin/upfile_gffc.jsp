<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="cn.core.UpFile_gffc" %> 
<jsp:useBean id="upFile_gffc" class="cn.core.UpFile_gffc" scope="session" />
<script>
function foo(){
	window.location.href("add_gffc.jsp");
}
</script>
<HTML><BODY> <P>选择要上传的文件：<BR>
   <FORM action="" method="post" ENCTYPE="multipart/form-data">
      <INPUT type=FILE name="boy" size="45"> 
      <BR> <INPUT type="submit" name ="g" value="提交">
   </FORM>
   <%  upFile_gffc.setRequest(request);
       upFile_gffc.setSession(session);
   %>
  <jsp:getProperty  name="upFile_gffc" property="upFileMessage"/>
  <table width="80%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="5" align="right">
    <a href="#" onClick="foo()">返回</a></td>
  </tr>
</table>
 </BODY></HTML>