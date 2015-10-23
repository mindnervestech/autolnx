package com.mnt.gzip;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GZIPFilter implements Filter {

	  // custom implementation of the doFilter method
	  public void doFilter(ServletRequest req,
	                       ServletResponse res,
	                       FilterChain chain)
	      throws IOException, ServletException {
	      
	    // make sure we are dealing with HTTP
	    if (req instanceof HttpServletRequest) {
	      HttpServletRequest request =
	          (HttpServletRequest) req;
	      HttpServletResponse response =
	          (HttpServletResponse) res;
	      // check for the HTTP header that
	      // signifies GZIP support
	      String ae = request.getHeader("accept-encoding");
	      if (ae != null && ae.indexOf("gzip") != -1) {
	        System.out.println("GZIP supported, compressing.");
	        GZIPResponseWrapper wrappedResponse =
	          new GZIPResponseWrapper(response);
	        chain.doFilter(req, wrappedResponse);
	        wrappedResponse.finishResponse();
	        return;
	      }
	      chain.doFilter(req, res);
	    }
	 }

	public void destroy() {
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}
}