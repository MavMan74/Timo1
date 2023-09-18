package de.dieenglerts;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TestServletDasNixMacht
 */
public class TestServletDasNixMacht extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServletDasNixMacht() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//HINZUGEFÜGT
		Enumeration<String> headernames = request.getHeaderNames();
		while (headernames.hasMoreElements()) {
			String DerHeaderName = (String) headernames.nextElement();
			String DerHeaderWert = request.getHeader(DerHeaderName);
			
			//Ausgabe im Web-Browser
			response.getWriter().append("Header von: "+ DerHeaderName+ " : " + DerHeaderWert);
			response.getWriter().append("<br>");
		}
		
		request.getServletContext().setAttribute("name", "Mustermann");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//Hier versuche ich einen Besucherzähler einzubauen
		HttpSession session = request.getSession();
		Integer counter = (Integer) session.getAttribute("counter");

		if (counter == null) {
			counter = Integer.valueOf(0);
		}
		counter++;
		session.setAttribute("counter", counter);
		response.getWriter().append("Dies ist Besuch Nummer ").append(counter.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
