package cn.dao;

import cn.model.Learn;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class Dblearn extends Learn{
private Learn l=new Learn();
public Dblearn(){}
public Dblearn(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_LEARN+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			l.setLid(rs.getInt("lid"));
			l.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			l.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
			l.setClick(rs.getInt("click"));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" Dblearn(String sql "+l.getLid());
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
public Dblearn(HttpServletRequest request){
	l.setTitle(ParamUtils.getRequestString(request, "title"));
	l.setAuthor(ParamUtils.getRequestString(request,"author"));
	l.setContent(ParamUtils.getRequestString(request, "content"));
	l.setClick(ParamUtils.getIntParameter(request, "click"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_LEARN);
		ps.setString(1, l.getTitle());
		ps.setString(2, l.getAuthor());
		ps.setString(3, l.getContent());
		ps.setInt(4, l.getClick());
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
		System.out.println(ps+" Dblearn.Insert()");
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
		ps=con.prepareStatement(FinalConstants.SELECT_LEARN+sql);
		rs=ps.executeQuery();
		while(rs.next()){
		    Learn ln=new Learn();
			ln.setLid(rs.getInt("lid"));
			ln.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			ln.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
			ln.setContent(ParamUtils.getSqlString(rs.getString("content")));
			ln.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			ln.setClick(rs.getInt("click"));
			coll.add(ln);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" Dblearn.select(String sql)");
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
        ps = con.prepareStatement(FinalConstants.SELECT_LEARN + sql);
        rs = ps.executeQuery();
        if (tip <= 0) {
            rs.beforeFirst();
        } else {
            if (!rs.absolute(tip)) {
                rs.beforeFirst();
            }
        }
        for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
        	 Learn ln=new Learn();
 			ln.setLid(rs.getInt("lid"));
 			ln.setTitle(ParamUtils.getSqlString(rs.getString("title")));
 			ln.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
 			ln.setContent(ParamUtils.getSqlString(rs.getString("content")));
 			ln.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
 			ln.setClick(rs.getInt("click"));
 			coll.add(ln);
        }
    } catch (SQLException ex) {
        System.out.println(ex.getMessage());
    } finally {
        System.out.println(ps + " Dblearn.Select(int page,String sql) ");
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
public int getLid() {
    return l.getLid();
}
public void setLid(int lid) {
    l.setLid(lid);
}
public String getTitle() {
    return l.getTitle();
}
public void setTitle(String title) {
    l.setTitle(title);
}
public String getAuthor() {
    return l.getAuthor();
}
public void setAuthor(String author){
	l.setAuthor(author);
}
public String getContent(){
	return l.getContent();
}
public void setContent(String content){
	l.setContent(content);
}
public String getUtime(){
	return l.getUtime();
}
public void setUtime(String utime){
	l.setUtime(utime);
}
public int getClick(){
	return l.getClick();
}
public void setClick(int click){
	l.setClick(click);
}
}