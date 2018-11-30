<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%@ page language="java" import="java.sql.*"  %>
    
<!DOCTYPE html>
<html>
<head></head>
<body>

<%
String url = "jdbc:oracle:thin:@127.0.0.1:1521:oraknu";
String user = "kdhong";
String pass = "kdhong";
Connection conn = null;
String sql = null;
String query = null;
int result;
ResultSet rs;
PreparedStatement pstmt = null;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("드라이버검색성공!");
} catch (ClassNotFoundException e) {
System.err.println("error = " + e.getMessage());
System.exit(1);
}
try {
conn = DriverManager.getConnection(url, user, pass);
} catch (SQLException e) {
System.err.println("sql error = " + e.getMessage());
System.exit(1);
}
try {
conn.setAutoCommit(false);

Statement stmt = conn.createStatement();



sql = "select * from emp";
//result = stmt.executeUpdate(sql);
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

while(rs.next())
{
	String eid = rs.getString("eid");
	String ename = rs.getString("ename");
%>
	<%=eid%>
	<%=ename%>
	<br>
	 
<%	
}
conn.commit();
conn.setAutoCommit(true);
stmt.close();
conn.close();
} catch (Exception e) {
System.err.println("sql error = " + e.getMessage());
}
%>
</body>
</html>