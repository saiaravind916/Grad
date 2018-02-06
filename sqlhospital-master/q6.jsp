
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String name = request.getParameter("pname");  
            String drug = request.getParameter("drug");
            ResultSet resultset = statement.executeQuery("select doctor_id,d_name FROM doctor where doctor_id IN (select doctor_id from patient where patient.doctor_id = doctor.doctor_id and p_name= '"+ name +"') OR doctor_id IN (select doctor_id from drug where doctor.doctor_id = drug.doctor_id and drug_name = '"+ drug +"')"); 
      
      %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Doctor ID</th>
                       <th>Doctor name</th></tr>
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