<HTML>
    <HEAD>
        <TITLE>Login using jsp</TITLE>
    </HEAD>
 
    <BODY>
        <H3>Check MYSQL server connection with JDBC</H3>
  
            <form action="checkConnection.jsp">
                <table>
                    <tr>
                        <td> Server IP  : </td><td> <input name="serverip" size=15 type="text" value="localhost"/> </td> 
                    </tr>
                      <tr>
                        <td> User Name  : </td><td> <input name="uname" size=15 type="text" value="root"/> </td> 
                    </tr>
                    <tr>
                        <td> Database Name  : </td><td> <input name="dbname" size=15 type="text" value="sonar"/> </td> 
                    </tr>
                     <tr>
                        <td> Password : </td><td> <input name="password" size=15 type="password" value="root"/> </td> 
                    </tr>
                </table>
                <input type="submit" value="login" />
            </form>
             
         
    </BODY>
    
</HTML> 
