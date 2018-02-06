
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        <table border="1">
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

          

            
            CallableStatement cs=con.prepareCall("{?=call aaa(?)}");%>
        
     
       <%
          
           cs.setString("name","Katie");
           
       %><%=cs.getInt(1)%>
       
                 <button onclick="goBack()">Back</button>
      <script>
function goBack() {
    window.history.back();
}
</script>
    </BODY>
</HTML>