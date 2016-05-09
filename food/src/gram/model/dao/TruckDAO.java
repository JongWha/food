package gram.model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import gram.model.dto.Truck;

public interface TruckDAO 
{
	/**
	  * 레코드 전체 검색
	  * */
	  ArrayList<Truck> selectAll(String title) throws SQLException;								// 모든 레코드 건색 = 데이터 전째 보여주기  한줄은 Electronics에 저장하고 나머지는 list에 저장한다. 

	/**
	 * 레코드 삽입
	 * @return : true-삽입성공 , false - 삽입실패
	 * */
	  	int insert(Truck tru) throws SQLException;
}
