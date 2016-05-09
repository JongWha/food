 package gram.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import gram.model.dto.Truck;
import gram.model.service.TruckService;

public class SelectTrucAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse respone) throws ServletException, IOException 
	{
		String url = "errorView/error.jsp";							//실패가 되면 이거!!!!!
		
		try
		{
			String title = request.getParameter("target_title");
				ArrayList<Truck> list = TruckService.selectAll(title);

				String truckName = list.get(0).getTruck_name();
				String truckIntro = list.get(0).getTruck_intro();
				String truckmail = list.get(0).getTruck_mail();
				String truckpicture = list.get(0).getTruck_picture();
				
				// 검색한다 selectAll
				request.setAttribute("list", list);		
				request.setAttribute("truck_name", truckName);
				request.setAttribute("truck_intro", truckIntro);
				request.setAttribute("truck_mail", truckmail);
				request.setAttribute("truck_picture", truckpicture);
				url = "detail.jsp";				// 성공!!!!!!!!!!!
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();								   // 콘솔에 에러 출력 
			request.setAttribute("errorMsg", e.getMessage());      // 웹페이지에 error 메세지 받아오기
		}
		
		request.getRequestDispatcher(url).forward(request, respone);		//값을 가지고 가기 때문에 forward 쓴다
		
	
	}

}
