<%-- 
    Document   : newjsp1
    Created on : Jul 25, 2016, 11:57:58 AM
    Author     : Aravind
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="q1.jsp" method="post">
        <p>1. How many people were infected by the disease <input type="text" name="disease" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q2.jsp" method="post">
            <p>2. Retrieve the ID's of the doctors who have diagnosed more than <input type="text" name="num" maxlength="15" size="20"> patients </p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q3.jsp" method="post">
        <p>3. Arrange the people between the ages <input type="text" name="age1" maxlength="3" size="3"> and <input type="text" name="age2" maxlength="3" size="3"> according to their diseases </p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q4.jsp" method="post">
        <p>4. How many patients are using the drug <input type="text" name="drug" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q5.jsp" method="post">
        <p>5. What is the name and address of the patient whose report ID is <input type="text" name="report" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q6.jsp" method="post">
        <p>6. Retrieve the id and name of the doctor who diagnosed the patient with name <input type="text" name="pname" maxlength="15" size="20"> or who prescribed the drug <input type="text" name="drug" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q7.jsp" method="post">
        <p>7. Retrieve the name and id of the patient who took a test on <input type="text" name="date" maxlength="15" size="20"> or whose bill id is  <input type="text" name="bill" maxlength="15" size="20">
</p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q8.jsp" method="post">
        <p>8. Retrieve the name and id of the patient whose address is same as that of the doctor.</p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q9.jsp" method="post">
        <p>9. Retrieve the category of test taken by the patient with the name <input type="text" name="name" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="q10.jsp" method="post">
        <p>10. Retrieve the name of the patient who was admitted on the date <input type="text" name="date" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
        
        <form action="newjsp.jsp" method="post">
        <p>10. Retrieve the name of the patient who was admitted on the date <input type="text" name="name" maxlength="15" size="20"></p>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
