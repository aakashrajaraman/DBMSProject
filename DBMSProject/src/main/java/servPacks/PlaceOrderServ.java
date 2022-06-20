package servPacks;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import java.lang.Object;
import javax.servlet.jsp.PageContext;
import java.text.DateFormat;  
import java.text.SimpleDateFormat;  
import java.util.Date;  
import java.util.Calendar;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import java.util.Calendar;

/**
 * Servlet implementation class PlaceOrderServ
 */
@WebServlet("/PlaceOrderServ")
public class PlaceOrderServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceOrderServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String table =  "<table class=\"center\">\r\n"
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
				
		try {
			  Date date = Calendar.getInstance().getTime();  
              DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
               
              Calendar cal = Calendar.getInstance();
              cal.add(Calendar.DATE, 3);
              String strDate = dateFormat.format(cal.getTime());
              
             
             
             
			 
			//gets the driver
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			//creates the connection
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBMSProject", "root", "Aakash5122!");
			
			//gets values from jsp
			String m = request.getParameter("txtName").toUpperCase();
			String n = request.getParameter("txtEmail");
			String o = request.getParameter("txtColor").toUpperCase();
			int p = Integer.parseInt(request.getParameter("txtQuantity"));
			int price = p*doGet(request, response, o);
			int x = (int)(1000000000*Math.random());
			
			//statement to be executed
			//name, email, color, quantity, price, date, order id
			PreparedStatement ps = conn.prepareStatement("INSERT INTO ORDERS VALUES (?, ?, ?, ?, ?, ?, ?) ");
			table = table+"<tr><td style=\"color:#ffffff\">"+ m+"</td>"+"<td style=\"color:#ffffff\">"+ n+
					"</td>"+"<td style=\"color:#ffffff\">"+ o+"</td>"+"<td style=\"color:#ffffff"
							+ "\">"+ p+"</td>"+"<td style=\"color:#ffffff\">"+ strDate+"</td>"+"<td style=\"color:#ffffff\">"+ 
					x+"</td>"+"<td style=\"color:#ffffff\">"+ price+"</td>"+"</tr>\r\n";
			table+= "</thead>\r\n"+ "</table>";
			
			//replaces question marks
			ps.setString(1, m);
			ps.setString(2, n);
			ps.setString(3, o);
			ps.setInt(4, p);
			ps.setInt(5,  price);
			ps.setString(6, strDate);
			ps.setInt(7, x);
			
			ps.executeUpdate();
		//	ps2.executeUpdate();
			
			 request.setAttribute("table", table);
	         RequestDispatcher rd = request.getRequestDispatcher("placeOrderRedirect.jsp");
	         rd.forward(request, response);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//System.out.print("the error is here");
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected int doGet(HttpServletRequest request, HttpServletResponse response, String s) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		int x = -5;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBMSProject", "root", "Aakash5122!");
			String s2 = "SELECT P.PRICE FROM PAINT P WHERE P.COLOR = \""+ s + "\";";
			PreparedStatement ps = conn.prepareStatement(s2);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {//if the execution was successful
				
				x = rs.getInt("price");
				
				
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//creates the connection
 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return x;
		
	}

}
