
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.apache.tomcat.jni.User.username;


public class flightAvailable extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        
        String from =request.getParameter("from");
        String to =request.getParameter("to");
        
        
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
           
           out.print(from);
           out.print(to);
          
           System.out.println("Conn created");
           
          Statement st = con.createStatement();
                
                
                    
        String qr = "select * from flight;";                    
        ResultSet rs = st.executeQuery(qr);
        
        
                
                    
                

            while(rs.next())
            {
                if(rs.getString(3).equals(from))
                {
                    if(rs.getString(4).equals(to))
                    {
        

                        RequestDispatcher rd = request.getRequestDispatcher("flightAvailable.jsp");
                        rd.forward(request, response);
                    }
                    
                }
                else
                {
                    out.print("Sorry incorrect username or password");
                    RequestDispatcher rd = request.getRequestDispatcher("index.html");
                        rd.include(request, response);
                }
            }
                   

           con.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    

}
