
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String date = request.getParameter("date");  
            
            ResultSet resultset = 
                statement.executeQuery("SELECT p_name FROM inpatient WHERE date_of_admission='"+ date +"'") ; 
       %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Patient name </th>
                      </tr>
           <%do
           {%>
               
          <tr><td><%=resultset.getString(1)%> </td>
                       </TR>
          
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