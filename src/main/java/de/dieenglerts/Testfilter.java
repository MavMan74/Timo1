package de.dieenglerts;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class Testfilter
 */
public class Testfilter extends HttpFilter implements Filter {
       
    private FilterConfig filterConfig;

	/**
     * @see HttpFilter#HttpFilter()
     */
    public Testfilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//Bevor es weitergeleitet wird, soll der Filter angewandt werden, dass Text rot wird
		//Im Filter hatte ich ja den Parameter mit "color" und "red" deklariert
		response.getWriter().append("<div style=\"color:").append(filterConfig.getInitParameter("color")).append(";\">");

		// pass the request along the filter chain
		chain.doFilter(request, response);
		
		//Und dann muss ich hier ja nach der Ausgabe das DIV wieder schliessen. Das mache ich hier
		//writer holen und append
		response.getWriter().append("</div");
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		//Wenn diese Zeile geschrieben wird, dann noch auf das Ausrufezeichen klicken und den Filter 
		//in meiner Klasse ablegen
		this.filterConfig = fConfig;
	}

}
