package gram.model.service;

import java.sql.SQLException;
import java.util.ArrayList;

import gram.model.dao.TruckDAOImpl;
import gram.model.dto.Truck;

public class TruckService 
{
	static TruckDAOImpl dao = new TruckDAOImpl();
	public static ArrayList<Truck> selectAll(String title) throws SQLException
	{
		return dao.selectAll(title);
	}
	
	public static int insert(Truck tru) throws SQLException
	{
		int result = dao.insert(tru);
		if(result == 0)
		{
			throw new SQLException("삽입되지 않았습니다."); // insert가 안되면 0 으로  띄니깐 강제적으로 예외처리를 하는 것
		}
		
		return result;
		//return dao.insert(electronics);
	}
}
