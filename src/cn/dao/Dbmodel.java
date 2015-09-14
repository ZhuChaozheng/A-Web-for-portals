package cn.dao;

import cn.model.Model;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class Dbmodel extends Model{
private Model m=new Model();
public Dbmodel(){}
public Dbmodel(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_MODEL+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			m.setMid(rs.getInt("mid"));
			m.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			m.setName(ParamUtils.getSqlString(rs.getString("name")));
			m.setSummary(ParamUtils.getSqlString(rs.getString("summary")));
			m.setContent(ParamUtils.getSqlString(rs.getString("content")));
			m.setMpic(ParamUtils.getSqlString(rs.getString("mpic")));
			m.setClick(rs.getInt("click"));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" Dbmodel(String sql "+m.getMid());
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
public Dbmodel(HttpServletRequest request){
	m.setName(ParamUtils.getRequestString(request, "name"));
	m.setSummary(ParamUtils.getRequestString(request,"summary"));
	m.setContent(ParamUtils.getRequestString(request, "content"));
	m.setMpic(ParamUtils.getRequestString(request, "mpic"));
	m.setClick(ParamUtils.getIntParameter(request, "click"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_MODEL);
		ps.setString(1, m.getName());
		ps.setString(2, m.getSummary());
		ps.setString(3, m.getContent());
		ps.setString(4,m.getMpic());
		ps.setInt(5,m.getClick());
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
		System.out.println(ps+" Dbmodel.Insert()");
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
		ps=con.prepareStatement(FinalConstants.SELECT_MODEL+sql);
		rs=ps.executeQuery();
		for (int i = 1; rs.next() && i <=2; i++) {
			Model ml=new Model();
			ml.setMid(rs.getInt("mid"));
			ml.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			ml.setName(ParamUtils.getSqlString(rs.getString("name")));
			ml.setSummary(ParamUtils.getSqlString(rs.getString("summary")));
			ml.setContent(ParamUtils.getSqlString(rs.getString("content")));
			ml.setMpic(ParamUtils.getSqlString(rs.getString("mpic")));
			ml.setClick(rs.getInt("click"));
			coll.add(ml);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" Dbmodel.select(String sql)");
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
        ps = con.prepareStatement(FinalConstants.SELECT_MODEL + sql);
        rs = ps.executeQuery();
        if (tip <= 0) {
            rs.beforeFirst();
        } else {
            if (!rs.absolute(tip)) {
                rs.beforeFirst();
            }
        }
        for (int i = 1; rs.next() && i <=FinalConstants.STEP; i++) {
        	Model ml=new Model();
			ml.setMid(rs.getInt("mid"));
			ml.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			ml.setName(ParamUtils.getSqlString(rs.getString("name")));
			ml.setSummary(ParamUtils.getSqlString(rs.getString("summary")));
			ml.setContent(ParamUtils.getSqlString(rs.getString("content")));
			ml.setMpic(ParamUtils.getSqlString(rs.getString("mpic")));
			ml.setClick(rs.getInt("click"));
			coll.add(ml);
        }
    } catch (SQLException ex) {
        System.out.println(ex.getMessage());
    } finally {
        System.out.println(ps + " Dbmodel.Select(int page,String sql) ");
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
		ps=con.prepareStatement(FinalConstants.UPDATE_MODEL);
		ps.setString(1, m.getName());
		ps.setString(2, m.getSummary());
		ps.setString(3, m.getContent());
		ps.setInt(4,m.getMid());
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
		System.out.println(ps+" Dbmodel.Update()");
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
public boolean Update(int click){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement("update model set click=? where mid=?");
		ps.setInt(1,m.getClick());
		ps.setInt(2,m.getMid());
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
		System.out.println(ps+" Dbmodel.Update(click)");
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
public int getMid() {
    return m.getMid();
}
public void setMid(int mid) {
    m.setMid(mid);
}
public String getUtime() {
    return m.getUtime();
}
public void setUtime(String utime) {
    m.setUtime(utime);
}
public String getName() {
    return m.getName();
}
public void setName(String name) {
    m.setName(name);
    Update();
}
public String getSummary() {
    return m.getSummary();
}
public void setSummary(String summary){
	m.setSummary(summary);
	Update();
}
public String getContent() {
    return m.getContent();
}
public void setContent(String content) {
    m.setContent(content);
    Update();
}
public String getMpic() {
    return m.getMpic();
}
public void setMpic(String mpic) {
    m.setMpic(mpic);
}
public int getClick(){
	return m.getClick();
}
public void setClick(int click){
	m.setClick(click);
	Update(click);
}
}