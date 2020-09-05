<%@page import="java.util.List"%>
<%@page import="com.student.management.entities.Assignment"%>
<%@page import="com.student.management.dao.AssignmentDao"%>
<%@page import="com.student.management.helper.ConnectionProvider"%>

<div class="row">

<%

	AssignmentDao dao=new AssignmentDao(ConnectionProvider.getConnection());
	List<Assignment> a=dao.getAllAssignments();
	for(Assignment p:a)
	{
%>
	<div class="col-md-10 mt-3">
		<div class="card">
			<div class="card-body">
				<h4><b>Subject : </b><%=p.getTitle() %></h4>
				<p><%=p.getContent() %></p>
				<hr>
				<b>Last Date of submission : <%=p.getDate() %></b>
			</div>
		</div>
	</div>

<%
		
	}


%>
</div>