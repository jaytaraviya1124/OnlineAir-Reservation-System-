
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


public class userprocess extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String uname=request.getParameter("uname");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String username = request.getParameter("username");
                  
          
        
        HttpSession session=request.getSession();  
        
        session.setAttribute("uname",uname); 
            Class.forName("com.mysql.jdbc.Driver");
           
         try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","")) {
             System.out.println("Conn created");
             
            PreparedStatement ps=(PreparedStatement) con.prepareStatement("Update user set firstname=?,lastname=?,username=?,password=?,email=? where username=\""+username+"\"");
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, uname);     
            ps.setString(4, password);
            ps.setString(5, email);

            out.print("Record Updated Successfully");
            RequestDispatcher rd = request.getRequestDispatcher("retrieve.jsp");
                        rd.forward(request, response);
                        ps.executeUpdate();
             
          
         }
        }catch(IOException | ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
}

