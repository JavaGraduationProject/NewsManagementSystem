<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="xinwenfabuhsgb" scope="page" class="com.bean.XinwenfabuBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xinwenfabu.xls");
%>
<html>
  <head>
    <title>���ŷ���</title>
  </head>

  <body >
 <%
			String sql="select * from xinwenfabu  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>�˺�</td>    <td align='center'>����</td>    <td  width='90' align='center'>ͷ��</td>    <td align='center'>����</td>    <td align='center'>��ϵ�绰</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=xinwenfabuhsgb.getAllXinwenfabu(7);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.zhanghao}</td>    <td>${u.mima}</td>    <td width='90' align='center'><a href='${u.touxiang}' target='_blank'><img src='${u.touxiang}' width=88 height=99 border=0 /></a></td>    <td>${u.xingming}</td>    <td>${u.lianxidianhua}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

