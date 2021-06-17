
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


public class flightdetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        
        String fl_no = request.getParameter("fl_no");
        String fl_name =request.getParameter("fl_name");
        String src =request.getParameter("src");
        String dest =request.getParameter("dest");
        String date =request.getParameter("date");
        String time =request.getParameter("time");
        String airport_name =request.getParameter("airport_name");
        int ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
                  
          
        
        HttpSession session=request.getSession();  
        
        session.setAttribute("fl_no",fl_no); 
            Class.forName("com.mysql.jdbc.Driver");
           
         try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","")) {
             System.out.println("Conn created");
             
             PreparedStatement stmt=(PreparedStatement) con.prepareStatement("insert into flight values(?,?,?,?,?,?,?,?)");
             stmt.setString(1,fl_no);
             stmt.setString(2,fl_name);
             stmt.setString(3,src);
             stmt.setString(4,dest);
             stmt.setString(5,date);
             stmt.setString(6,time);
             stmt.setString(7,airport_name);
             stmt.setInt(8,ticket_price);
             
             
             
             out.println(" Flight details is successfully stored");
              RequestDispatcher rd = request.getRequestDispatcher("addflight.jsp");
                        rd.forward(request, response);
             stmt.executeUpdate();
         }
        }catch(IOException | ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
}
