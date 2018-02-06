
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String age1 = request.getParameter("age1");  
            String age2 = request.getParameter("age2");
            ResultSet resultset = 
                statement.executeQuery("select p_name,disease from patient where age between '" + age1 + "' and '" + age2 + "' order by age") ; 
        %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Patient name</th>
                       <th>Disease</th></tr>
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