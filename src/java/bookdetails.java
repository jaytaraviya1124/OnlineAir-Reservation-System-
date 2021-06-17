
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class bookdetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        
        String flightName = request.getParameter("fname");
        String flightNumber = request.getParameter("fno");
        String firstname = request.getParameter("firstName");
        String lastname =request.getParameter("lname");
        String mobile =request.getParameter("mobile");
        String email =request.getParameter("email");
        String date =request.getParameter("date");
        String person =request.getParameter("nperson");
        String address =request.getParameter("address");
        
                  
          
        
        HttpSession session=request.getSession();  
        
        session.setAttribute("firstname",firstname); 
            Class.forName("com.mysql.jdbc.Driver");
           
         try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","")) {
             System.out.println("Conn created");
             
             PreparedStatement stmt=(PreparedStatement) con.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?)");
             stmt.setString(1,firstname);
             stmt.setString(2,lastname);
             stmt.setString(3,flightNumber);
             stmt.setString(4,flightName);
             stmt.setString(5,mobile);
             stmt.setString(6,email);
             stmt.setString(7,date);
             stmt.setString(8,person);
             stmt.setString(9,address);
            
             
             
             
             out.println(" Flight details is successfully stored");
              RequestDispatcher rd = request.getRequestDispatcher("confirmticket.jsp");
                        rd.forward(request, response);
             stmt.executeUpdate();
         }
        }catch(IOException | ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
}
