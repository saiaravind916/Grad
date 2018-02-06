
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
       
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String name = request.getParameter("name");  
            
            ResultSet resultset = 
                statement.executeQuery(" select category from labreport where patientid in (select patient_id from patient where labreport.patientid=patient.patient_id and p_name='" + name + "')") ; 
        %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Test </th>
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