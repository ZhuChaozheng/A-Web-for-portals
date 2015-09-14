package cn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
import cn.model.Admin;

public class Dbadmin extends Admin {
	private Admin a=new Admin();
	public Dbadmin(){}
	public Dbadmin(String sql){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con=Database.getConnection();
			ps=con.prepareStatement(FinalConstants.SELECT_ADMIN+sql,
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			rs=ps.executeQuery();
			if(rs.next()){
				a.setAid(ParamUtils.getSqlString(rs.getString("aid")));
				a.setPassword(ParamUtils.getSqlString(rs.getString("password")));
			}
		}catch(SQLException e){
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally{
			System.out.println(ps+" Dbadmin(String sql) "+a.getAid());
			try{
				if(ps!=null){
					ps.close();
					ps=null;
				}
			}catch(SQLException e){
				ps=null;
			}
			try{
				if(con!=null){
					con.close();
					con=null;
				}
			}catch(SQLException e){
				con=null;
			}
		}
	}
	public String getPassword(){
		return a.getPassword();
	}
	public void setPassword(String password){
		a.setPassword(password);
	}
	public String getAid(){
		return a.getAid();
	}
	public void setAid(String aid){
		a.setAid(aid);
	}
}
