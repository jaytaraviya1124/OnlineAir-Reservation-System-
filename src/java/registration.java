
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        String firstname =request.getParameter("firstname");
        out.print(firstname);
        String lastname =request.getParameter("lastname");
        String username =request.getParameter("username");
        String password =request.getParameter("password");
        String email =request.getParameter("email");
        
        HttpSession session=request.getSession();  
        session.setAttribute("username",username); 
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
          
           System.out.println("Conn created");
           
        PreparedStatement stmt=(PreparedStatement) con.prepareStatement("insert into user values(?,?,?,?,?)");          
          stmt.setString(1,firstname);
          stmt.setString(2,lastname);
          stmt.setString(3,username);
          stmt.setString(4,password);
          stmt.setString(5,email);
        
          out.println("successfully stored");
           RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                        rd.forward(request, response);
          stmt.executeUpdate();
           con.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    

}
