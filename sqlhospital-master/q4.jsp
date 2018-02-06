
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String drug = request.getParameter("drug");  

            ResultSet resultset = 
                statement.executeQuery("select drug_name,count(patient_id) from patient inner join drug on patient.patient_id=drug.p_id where drug_name = '" + drug + "'") ; 
        %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Drug name</th>
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