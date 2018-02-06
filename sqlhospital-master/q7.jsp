
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    
    <BODY>
        
        
        <% Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospital", "root", "system");

            Statement statement = con.createStatement();

            String date = request.getParameter("date");  
            String bill = request.getParameter("bill");
            ResultSet resultset = 
                statement.executeQuery("select patient_id,p_name from patient where patient_id IN(select patientid from labreport where patient.patient_id=labreport.patientid and date=' " + date +" ') OR  patient_id IN (select pid from bill where patient.patient_id=bill.pid and bill_id=' " + bill +" ')") ; 
        %>
         
        <% if(resultset.next())
       {%><table border="1">
                   <tr><th>Patient ID</th>
                       <th>Patient name</th></tr>
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