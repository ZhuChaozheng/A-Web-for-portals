package cn.dao;

import cn.model.SeaSoul;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class DbseaSoul extends SeaSoul{
private SeaSoul ss=new SeaSoul();
public DbseaSoul(){}
public DbseaSoul(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_SEASOUL+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			ss.setSsid(rs.getInt("ssid"));
			ss.setName(ParamUtils.getSqlString(rs.getString("name")));
			ss.setLink(ParamUtils.getSqlString(rs.getString("link")));
			ss.setClicktime(rs.getInt("clicktime"));
			ss.setSx(rs.getInt("sx"));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" DbseaSoul(String sql "+ss.getSsid());
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
public DbseaSoul(HttpServletRequest request){
	ss.setName(ParamUtils.getRequestString(request, "name"));
	ss.setLink(ParamUtils.getRequestString(request,"link"));
	ss.setClicktime(ParamUtils.getIntParameter(request, "clicktime"));
	ss.setSx(ParamUtils.getIntParameter(request,"sx"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_SEASOUL);
		ps.setString(1, ss.getName());
		ps.setString(2, ss.getLink());
		ps.setInt(3, ss.getClicktime());
		ps.setInt(4, ss.getSx());
		if(ps.executeUpdate()>0){
			b=true;
		}else{
			b=false;
		}
		}catch(SQLException e){
			b=false;
			System.out.println(e.getMessage());
			e.printStackTrace();
	}finally{
		System.out.println(ps+" DbseaSoul.Insert()");
		try{
			if(ps!=null){
				ps.close();
			}
		}catch(SQLException e){
			ps=null;
		}
		try{
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			con=null;
		}
	}
	return b;
}
public Collection Select(String sql){
	Collection coll=new ArrayList();
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_SEASOUL+sql);
		rs=ps.executeQuery();
		while(rs.next()){
			SeaSoul sl=new SeaSoul();
			sl.setSsid(rs.getInt("ssid"));
			sl.setName(ParamUtils.getSqlString(rs.getString("name")));
			sl.setLink(ParamUtils.getSqlString(rs.getString("link")));
			sl.setClicktime(rs.getInt("clicktime"));
			sl.setSx(rs.getInt("sx"));
			coll.add(sl);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" DbseaSoul.select(String sql)");
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
	return coll;
}
//Ò³Êý+SQLÌõ¼þ
public Collection Select(int page, String sql) {
    Collection coll = new ArrayList();
    Connection con = null;
    ResultSet rs = null;
    PreparedStatement ps = null;
    int tip = FinalConstants.STEP * (page - 1);
    try {
        con = Database.getConnection();
        ps = con.prepareStatement(FinalConstants.SELECT_SEASOUL + sql);
        rs = ps.executeQuery();
        if (tip <= 0) {
            rs.beforeFirst();
        } else {
            if (!rs.absolute(tip)) {
                rs.beforeFirst();
            }
        }
        for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
        	SeaSoul sl=new SeaSoul();
			sl.setSsid(rs.getInt("ssid"));
			sl.setName(ParamUtils.getSqlString(rs.getString("name")));
			sl.setLink(ParamUtils.getSqlString(rs.getString("link")));
			sl.setClicktime(rs.getInt("clicktime"));
			sl.setSx(rs.getInt("sx"));
			coll.add(sl);
        }
    } catch (SQLException ex) {
        System.out.println(ex.getMessage());
    } finally {
        System.out.println(ps + " DbseaSoul.Select(int page,String sql) ");
        try {
            if (ps != null) {
                ps.close();
                ps = null;
            }
        } catch (SQLException e) {
            ps = null;
        }
        try {
            if (con != null) {
                con.close();
                con = null;
            }
        } catch (SQLException e) {
            con = null;
        }
    }
    return coll;
}
public boolean Update(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.UPDATE_SEASOUL);
		ps.setString(1, ss.getName());
		ps.setString(2, ss.getLink());
		ps.setInt(3, ss.getSx());
		ps.setInt(4,ss.getSsid());
		if(ps.executeUpdate()>0){
			b=true;
		}else{
			b=false;
		}
		}catch(SQLException e){
			b=false;
			System.out.println(e.getMessage());
			e.printStackTrace();
	}finally{
		System.out.println(ps+" DbseaSoul.Update()");
		try{
			if(ps!=null){
				ps.close();
			}
		}catch(SQLException e){
			ps=null;
		}
		try{
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			con=null;
		}
	}
	return b;
}
public int getSsid() {
    return ss.getSsid();
}
public void setSsid(int ssid) {
    ss.setSsid(ssid);
}
public String getName() {
    return ss.getName();
}
public void setName(String name) {
    ss.setName(name);
    Update();
}
public String getLink() {
    return ss.getLink();
}
public void setLink(String link){
	ss.setLink(link);
	Update();
}
public int getClicktime(){
	return ss.getClicktime();
}
public void setClicktime(int clicktime){
	ss.setClicktime(clicktime);
}
public int getSx(){
	return ss.getSx();
}
public void setSx(int sx){
	ss.setSx(sx);
}
}