
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            

            String num = request.getParameter("num");  
            PreparedStatement statement = con.prepareStatement("SELECT doctor_id, COUNT(patient_id) AS num_of_patients FROM patient group by doctor_id HAVING COUNT(patient_id)>='" +num+ "'");
            ResultSet resultset = statement.executeQuery();
       
         %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Doctor ID</th>
                       <th>Number of patients</th></tr>
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