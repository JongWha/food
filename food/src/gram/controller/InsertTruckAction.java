package gram.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gram.model.dto.Truck;
import gram.model.service.TruckService;

public class InsertTruckAction implements Action 
{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse respone) throws ServletException, IOException 
	{
		String username = request.getParameter("username");
		String star = request.getParameter("star");
		String comment = request.getParameter("comment");
		
		Truck tru = new Truck(username, Integer.parseInt(star), comment);
		
		try
		{
			TruckService.insert(tru);
			respone.sendRedirect("tru?command=select");
			
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
			
		}
		
		request.getRequestDispatcher("errorView/error.jsp").forward(request, respone);
	}

}
