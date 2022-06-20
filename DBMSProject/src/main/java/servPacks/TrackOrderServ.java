package servPacks;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrackOrderServ
 */
@WebServlet("/TrackOrderServ")
public class TrackOrderServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackOrderServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();
				
						
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBMSProject", "root", "Aakash5122!");
					String id = request.getParameter("TrackingID");
					String s2 = "SELECT * FROM ORDERS O WHERE O.ORDERID = \""+ id + "\";";
					
					PreparedStatement ps = conn.prepareStatement(s2);
					ResultSet rs = ps.executeQuery();
					String table = "<h3> INVALID ORDER ID</h3>";
					
					if(rs.next()) {//if the execution was successful
						table = "<table class=\"center\">\r\n"
								+ "<thead>\r\n"
								+ "  <tr>\r\n"
								+ "    <td class=\"tg-2frz\" style=\"color:#ffffff\">NAME</td>\r\n"
								+ "    <td class=\"tg-2frz\" style=\"color:#ffffff\">EMAIL</td>\r\n"
								+ "    <td class=\"tg-wnz0\" style=\"color:#ffffff\">PAINT COLOR</td>\r\n"
								+ "    <td class=\"tg-wnz0\"style=\"color:#ffffff\">GALLONS</td>\r\n"
								+ "    <td class=\"tg-wnz0\" style=\"color:#ffffff\">DATE OF ARRIVAL (YYYY-MM-DD)</td>\r\n"
								+ "    <td class=\"tg-wnz0\" style=\"color:#ffffff\">ORDER ID</td>\r\n"
								+ "    <td class=\"tg-wnz0\" style=\"color:#ffffff\">AMOUNT DUE</td>\r\n"
								+ "  </tr>\r\n";
						String n = rs.getString("custname");
		     			String m = rs.getString("email");
		     			String o = rs.getString("color");
		     			String p = rs.getString("quantity");
		     			String q = rs.getString("totalprice");
		     			String r = rs.getString("eta");
		     			String s = rs.getString("totalprice");
						
		     			table+=  "<tr><td style=\"color:#ffffff\">" + n+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+m+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+o+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+p+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+q+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+r+"</td>\r\n"
								+ "    <td style=\"color:#ffffff\">"+s+"</td>\r\n"
								+ "  </tr>\r\n"
								+ "</tbody>\r\n"
								+ "</table>";
		     			
						
					}else {
						
						
					}
					request.setAttribute("table", table);
			         RequestDispatcher rd = request.getRequestDispatcher("trackOrderRedirect.jsp");
			         rd.forward(request, response);
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
