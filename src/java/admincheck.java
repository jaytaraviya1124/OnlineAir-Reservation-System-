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


public class admincheck extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try{
         PrintWriter out = response.getWriter();
        
        
        String username =request.getParameter("uname");
        String password =request.getParameter("pass");
        
        
        HttpSession session=request.getSession();  
        session.setAttribute("username",username); 
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
          
           System.out.println("Conn created");
           
          Statement st = con.createStatement();
                
                
                    
        String qr = "select * from admin;";                    
        ResultSet rs = st.executeQuery(qr);
        
        
                
                    
                

            while(rs.next())
            {
                if(rs.getString(3).equals(username))
                {
                    if(rs.getString(4).equals(password))
                    {
        
                        session.setAttribute("username", username);

                        RequestDispatcher rd = request.getRequestDispatcher("adminpage.jsp");
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
