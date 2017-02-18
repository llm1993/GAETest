<%@ page import="java.util.List" %>
<%@ page import="com.llm.domain.MyFile" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<html>
<body>
	<h1>GAE + Spring 3 MVC REST + CRUD Example with JDO</h1>

	Function : <a href="/addimg">Add Files</a>
	<hr />

	<h2>All Files</h2>
	<table border="1">
		<thead>
			<tr>
				<td>Name</td>
				<td>Action</td>
			</tr>
		</thead>
		
		<%
			
			if(request.getAttribute("list")!=null){
				
				List<MyFile> files = (List<MyFile>)request.getAttribute("list");
				
				if(!files.isEmpty()){
					 for(MyFile file : files){
						 
		%>
					<tr>
					  <td><a href="img/<%=KeyFactory.keyToString(file.getKey()) %>"><%=file.getFilename() %></td>
					  <td><a href="delete/<%=KeyFactory.keyToString(file.getKey()) %>">Delete</a></td>
					</tr>
		<%	
			
					}
		    
				}
			
		   	}
		%>
	</table>

</body>
</html>