package cn.dao;

import cn.model.Liuyan;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class Dbliuyan extends Liuyan{
private Liuyan ly=new Liuyan();
public Dbliuyan(){}
public Dbliuyan(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_LIUYAN+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			ly.setLyid(rs.getInt("lyid"));
			ly.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			ly.setName(ParamUtils.getSqlString(rs.getString("name")));
			ly.setTel(ParamUtils.getSqlString(rs.getString("tel")));
			ly.setMail(ParamUtils.getSqlString(rs.getString("mail")));
			ly.setContent(ParamUtils.getSqlString(rs.getString("content")));
			ly.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" Dbliuyan(String sql) "+ly.getLyid());
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
public Dbliuyan(HttpServletRequest request){
	ly.setTitle(ParamUtils.getRequestString(request, "title"));
	ly.setName(ParamUtils.getRequestString(request,"name"));
	ly.setTel(ParamUtils.getRequestString(request, "tel"));
	ly.setMail(ParamUtils.getRequestString(request, "mail"));
	ly.setContent(ParamUtils.getRequestString(request, "content"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_LIUYAN);
		ps.setString(1, ly.getTitle());
		ps.setString(2, ly.getName());
		ps.setString(3, ly.getTel());
		ps.setString(4,ly.getMail());
		ps.setString(5,ly.getContent());
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
		System.out.println(ps+" Dbliuyan.Insert()");
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
		ps=con.prepareStatement(FinalConstants.SELECT_LIUYAN+sql);
		rs=ps.executeQuery();
		while(rs.next()){
			Liuyan l=new Liuyan();
			l.setLyid(rs.getInt("lyid"));
			l.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			l.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			l.setName(ParamUtils.getSqlString(rs.getString("name")));
			l.setContent(ParamUtils.getSqlString(rs.getString("content")));
			l.setMail(ParamUtils.getSqlString(rs.getString("mail")));
			l.setTel(ParamUtils.getSqlString(rs.getString("tel")));
			coll.add(l);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" Dbliuyan.select(String sql)");
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
        ps = con.prepareStatement(FinalConstants.SELECT_LIUYAN + sql);
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
        		Liuyan l=new Liuyan();
    			l.setLyid(rs.getInt("lyid"));
    			l.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
    			l.setTitle(ParamUtils.getSqlString(rs.getString("title")));
    			l.setName(ParamUtils.getSqlString(rs.getString("name")));
    			l.setContent(ParamUtils.getSqlString(rs.getString("content")));
    			l.setMail(ParamUtils.getSqlString(rs.getString("mail")));
    			l.setTel(ParamUtils.getSqlString(rs.getString("tel")));
    			coll.add(l);
            }
       
        }else{
        	for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
        		Liuyan l=new Liuyan();
    			l.setLyid(rs.getInt("lyid"));
    			l.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
    			l.setTitle(ParamUtils.getSqlString(rs.getString("title")));
    			l.setName(ParamUtils.getSqlString(rs.getString("name")));
    			l.setContent(ParamUtils.getSqlString(rs.getString("content")));
    			l.setMail(ParamUtils.getSqlString(rs.getString("mail")));
    			l.setTel(ParamUtils.getSqlString(rs.getString("tel")));
    			coll.add(l);
            }
        } 
} catch (SQLException ex) {
    System.out.println(ex.getMessage());
} finally {
    System.out.println(ps + " Dbliuyan.Select(int page,String sql) ");
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
public int getLyid() {
    return ly.getLyid();
}
public void setLyid(int lyid) {
    ly.setLyid(lyid);
}
public String getUtime() {
    return ly.getUtime();
}
public void setUtime(String utime) {
    ly.setUtime(utime);
}
public String getTitle() {
    return ly.getTitle();
}
public void setTitle(String title) {
    ly.setTitle(title);
}
public String getName() {
    return ly.getName();
}
public void setName(String name){
	ly.setName(name);
}
public String getContent() {
    return ly.getContent();
}
public void setContent(String content) {
    ly.setContent(content);
}
public String getMai() {
    return ly.getMail();
}
public void setMail(String mail) {
    ly.setMail(mail);
}
public String getTel(){
	return ly.getTel();
}
public void setTel(String tel){
	ly.setTel(tel);
}
}