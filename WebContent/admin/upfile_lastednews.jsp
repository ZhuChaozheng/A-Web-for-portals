<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="cn.core.UpFile_lastednews" %> 
<jsp:useBean id="upFile_lastednews" class="cn.core.UpFile_lastednews" scope="session" />
<script>
function foo(){
	window.location.href("add_lastednews.jsp");
}
</script>
<HTML><BODY> <P>选择要上传的文件：<BR>
   <FORM action="" method="post" ENCTYPE="multipart/form-data">
      <INPUT type=FILE name="boy" size="45"> 
      <BR> <INPUT type="submit" name ="g" value="提交">
   </FORM>
   <% 
       upFile_lastednews.setRequest(request);
       upFile_lastednews.setSession(session);
   %>
  <jsp:getProperty  name="upFile_lastednews" property="upFileMessage"/>
  <table width="80%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="5" align="right">
    <a href="#" onClick="foo()">返回</a></td>
  </tr>
</table>
 </BODY></HTML>