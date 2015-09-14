package cn.dao;

import cn.model.New;
import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import cn.core.Database;
import cn.core.FinalConstants;
import cn.core.ParamUtils;
public class Dbnew extends New{
private New n=new New();
public Dbnew(){}
public Dbnew(String sql){
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.SELECT_NEW+sql,
				ResultSet.TYPE_SCROLL_INSENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		rs=ps.executeQuery();
		if(rs.next()){
			n.setNid(rs.getInt("nid"));
			n.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			n.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			n.setNpic(ParamUtils.getSqlString(rs.getString("npic")));
			n.setContent(ParamUtils.getSqlString(rs.getString("content")));
			n.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
			n.setClick(rs.getInt("click"));
			n.setLid(rs.getInt("lid"));
			n.setBid(rs.getInt("bid"));
			n.setSource(ParamUtils.getSqlString(rs.getString("source")));
			n.setIsDynamic(rs.getInt("isDynamic"));
		}
	}catch(SQLException e){
		System.out.println(e.getMessage());
		e.printStackTrace();
	}finally{
		System.out.println(ps+" Dbnew(String sql) "+n.getNid());
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
public Dbnew(HttpServletRequest request){
	n.setTitle(ParamUtils.getRequestString(request, "title"));
	n.setNpic(ParamUtils.getRequestString(request,"npic"));
	n.setContent(ParamUtils.getRequestString(request, "content"));
	n.setAuthor(ParamUtils.getRequestString(request, "author"));
	n.setClick(ParamUtils.getIntParameter(request, "click"));
	n.setLid(ParamUtils.getIntParameter(request, "lid"));
	n.setBid(ParamUtils.getIntParameter(request, "bid"));
	n.setSource(ParamUtils.getRequestString(request, "source"));
	n.setIsDynamic(ParamUtils.getIntParameter(request, "isDynamic"));
}
public boolean Insert(){
	boolean b=false;
	Connection con=null;
	PreparedStatement ps=null;
	try{
		con=Database.getConnection();
		ps=con.prepareStatement(FinalConstants.INSERT_NEW);
		ps.setString(1, n.getTitle());
		ps.setString(2, n.getNpic());
		ps.setString(3, n.getContent());
		ps.setString(4,n.getAuthor());
		ps.setInt(5,n.getClick());
		ps.setInt(6,n.getLid());
		ps.setInt(7, n.getBid());
		ps.setString(8,n.getSource());
		ps.setInt(9, n.getIsDynamic());
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
		System.out.println(ps+" Dbbew.Insert()");
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
		ps=con.prepareStatement(FinalConstants.SELECT_NEW+sql);
		rs=ps.executeQuery();
		for (int i = 1; rs.next() && i <= 5; i++) {
			New nw=new New();
			nw.setNid(rs.getInt("nid"));
			nw.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
			nw.setTitle(ParamUtils.getSqlString(rs.getString("title")));
			nw.setNpic(ParamUtils.getSqlString(rs.getString("npic")));
			nw.setContent(ParamUtils.getSqlString(rs.getString("content")));
			nw.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
			nw.setClick(rs.getInt("click"));
			nw.setLid(rs.getInt("lid"));
			nw.setBid(rs.getInt("bid"));
			nw.setSource(ParamUtils.getSqlString(rs.getString("source")));
			nw.setIsDynamic(rs.getInt("isDynamic"));
			coll.add(nw);
		}
	}catch(SQLException ex){
		System.out.println(ex.getMessage());
	}finally{
		System.out.println(ps+" Dbnew.select(String sql)");
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
        ps = con.prepareStatement(FinalConstants.SELECT_NEW + sql);
        rs = ps.executeQuery();
        if (tip <= 0) {
            rs.beforeFirst();
        } else {
            if (!rs.absolute(tip)) {
                rs.beforeFirst();
            }
        }
        if(page==9999){
        	for (int i = 1; rs.next() && i <= FinalConstants.STEP-2; i++) {
                New nw= new New();
                nw.setNid(rs.getInt("nid"));
                nw.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
                nw.setTitle(ParamUtils.getSqlString(rs.getString("title")));
                nw.setNpic(ParamUtils.getSqlString(rs.getString("npic")));
                nw.setContent(ParamUtils.getSqlString(rs.getString("content")));
                nw.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
                nw.setClick(rs.getInt("click"));
                nw.setLid(rs.getInt("lid"));
                nw.setBid(rs.getInt("bid"));
                nw.setSource(ParamUtils.getSqlString(rs.getString("source")));
                nw.setIsDynamic(rs.getInt("isDynamic"));
                coll.add(nw);
            }
        }
        else if(page==1000){
        	for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                New nw= new New();
                nw.setNid(rs.getInt("nid"));
                nw.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
                nw.setTitle(ParamUtils.getSqlString(rs.getString("title")));
                nw.setNpic(ParamUtils.getSqlString(rs.getString("npic")));
                nw.setContent(ParamUtils.getSqlString(rs.getString("content")));
                nw.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
                nw.setClick(rs.getInt("click"));
                nw.setLid(rs.getInt("lid"));
                nw.setBid(rs.getInt("bid"));
                nw.setSource(ParamUtils.getSqlString(rs.getString("source")));
                nw.setIsDynamic(rs.getInt("isDynamic"));
                coll.add(nw);
            }
        }
        else {
        	for (int i = 1; rs.next() && i <= 2*FinalConstants.STEP; i++) {
                New nw= new New();
                nw.setNid(rs.getInt("nid"));
                nw.setUtime(ParamUtils.getSqlString(rs.getString("utime")));
                nw.setTitle(ParamUtils.getSqlString(rs.getString("title")));
                nw.setNpic(ParamUtils.getSqlString(rs.getString("npic")));
                nw.setContent(ParamUtils.getSqlString(rs.getString("content")));
                nw.setAuthor(ParamUtils.getSqlString(rs.getString("author")));
                nw.setClick(rs.getInt("click"));
                nw.setLid(rs.getInt("lid"));
                nw.setBid(rs.getInt("bid"));
                nw.setSource(ParamUtils.getSqlString(rs.getString("source")));
                nw.setIsDynamic(rs.getInt("isDynamic"));
                coll.add(nw);
            }
        }
} catch (SQLException ex) {
    System.out.println(ex.getMessage());
} finally {
    System.out.println(ps + " Dbnew.Select(int page,String sql) ");
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
		ps=con.prepareStatement(FinalConstants.UPDATE_NEW);
		ps.setString(1, n.getTitle());
		ps.setString(2, n.getContent());
		ps.setInt(3,n.getNid());
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
		System.out.println(ps+" Dbbew.Update()");
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
		ps=con.prepareStatement("update new set click=? where nid=?");
		ps.setInt(1,n.getClick());
		ps.setInt(2,n.getNid());
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
		System.out.println(ps+" Dbbew.Update()");
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
public int getNid() {
    return n.getNid();
}
public void setNid(int nid) {
    n.setNid(nid);
}
public String getUtime() {
    return n.getUtime();
}
public void setUtime(String utime) {
    n.setUtime(utime);
}
public String getTitle() {
    return n.getTitle();
}
public void setTitle(String title) {
    n.setTitle(title);
    Update();
}
public String getNpic() {
    return n.getNpic();
}
public void setNpic(String npic){
	n.setNpic(npic);
	Update();
}
public String getContent() {
    return n.getContent();
}
public void setContent(String content) {
    n.setContent(content);
    Update();
}
public String getAuthor() {
    return n.getAuthor();
}
public void setAuthor(String author) {
    n.setAuthor(author);
}
public int getClick(){
	return n.getClick();
}
public void setClick(int click){
	n.setClick(click);
	Update(click);
}
public int getLid(){
	return n.getClick();
}
public void setLid(int lid){
	n.setLid(lid);
	Update();
}
public int getBid(){
	return n.getBid();
}
public void setBid(int bid){
	n.setBid(bid);
	Update();
}
public String getSource(){
	return n.getSource();
}
public void setSource(String source){
	n.setSource(source);
	Update();
}
public int getIsDynamic(){
	return n.getIsDynamic();
}
public void setIsDynamic(int isDynamic){
	n.setIsDynamic(isDynamic);
	Update();
}
}