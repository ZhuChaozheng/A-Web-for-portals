package cn.dao;

import cn.model.Gffc;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class Dbgffc extends Gffc{
private Gffc g=new Gffc();
public Dbgffc(){}
public Dbgffc(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_GFFC+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			g.setGid(rs.getInt("gid"));
			g.setName(ParamUtils.getSqlString(rs.getString("name")));
			g.setGpic(ParamUtils.getSqlString(rs.getString("gpic")));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" Dbgffc(String sql) "+g.getGid());
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
public Dbgffc(HttpServletRequest request){
	g.setName(ParamUtils.getRequestString(request, "name"));
	g.setGpic(ParamUtils.getRequestString(request,"gpic"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_GFFC);
		ps.setString(1, g.getName());
		ps.setString(2, g.getGpic());
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
		System.out.println(ps+" Dbgffc.Insert()");
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
		ps=con.prepareStatement(FinalConstants.SELECT_GFFC+sql);
		rs=ps.executeQuery();
		for (int i = 1; rs.next() && i <= 5; i++) {
			Gffc gc=new Gffc();
			gc.setGid(rs.getInt("gid"));
			gc.setName(ParamUtils.getSqlString(rs.getString("name")));
			gc.setGpic(ParamUtils.getSqlString(rs.getString("gpic")));
			coll.add(gc);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" Dbgffc.select(String sql)");
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
public Collection Select(int page,String sql){
    Collection coll = new ArrayList();
    Connection con = null;
    ResultSet rs = null;
    PreparedStatement ps = null;
    int tip = FinalConstants.STEP * (page - 1);
    try {
        con = Database.getConnection();
        ps = con.prepareStatement(FinalConstants.SELECT_GFFC + sql);
        rs = ps.executeQuery();
        if (tip <= 0) {
            rs.beforeFirst();
        } else {
            if (!rs.absolute(tip)) {
                rs.beforeFirst();
            }
        }
        if(page!=1000){
        	for (int i = 1; rs.next() && i <= 2*FinalConstants.STEP; i++) {
                Gffc gc= new Gffc();
                gc.setGid(rs.getInt("nid"));
                gc.setName(ParamUtils.getSqlString(rs.getString("name")));
                gc.setGpic(ParamUtils.getSqlString(rs.getString("gpic")));
                coll.add(gc);
            }
        }
        else{
        	for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Gffc gc= new Gffc();
                gc.setGid(rs.getInt("gid"));
                gc.setName(ParamUtils.getSqlString(rs.getString("name")));
                gc.setGpic(ParamUtils.getSqlString(rs.getString("gpic")));
                coll.add(gc);
            }
        } 
} catch (SQLException ex) {
    System.out.println(ex.getMessage());
} finally {
    System.out.println(ps + " Dbgffc.Select(int page,String sql) ");
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
public int getGid() {
    return g.getGid();
}
public void setGid(int gid) {
    g.setGid(gid);
}
public String getName() {
    return g.getName();
}
public void setName(String name) {
    g.setName(name);
}
public String getGpic() {
    return g.getGpic();
}
public void setGpic(String gpic){
	g.setGpic(gpic);
}
}

