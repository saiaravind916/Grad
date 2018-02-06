
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String pn = request.getParameter("pname");  
            String a = request.getParameter("address");
            ResultSet resultset = 
                statement.executeQuery("select p_name, address FRom patient where exists (select * from doctor where patient.address=doctor.address)") ; 
        %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Patient name</th>
                       <th>Address</th></tr>
           <%do
           {%>
               
          <tr><td><%=resultset.getString(1)%> </td>
                       <td><%=resultset.getString(2)%> </td></TR>
          
            <%  }
while(resultset.next());
}
       
       else
           out.println("No details");
             {%>
             
             
               <br>    
                   
         
       
        <%}%>   </TABLE>
       
        
          
        
              <br>
                 <button onclick="goBack()">Back</button>
      <script>
function goBack() {
    window.history.back();
}
</script>
    </BODY>
</HTML>