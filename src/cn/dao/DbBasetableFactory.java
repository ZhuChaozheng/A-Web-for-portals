package cn.dao;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import cn.model.*;
import cn.core.BasetableFactory;
import cn.core.Database;
import cn.core.FileUtils;
import cn.core.FinalConstants;

import com.jspsmart.upload.Request;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @version 1.0
 * 具体工厂
 */

public class DbBasetableFactory extends BasetableFactory {
    public DbBasetableFactory() {//构造方法
    }
    //获取记录总数
    public int getRow(String sql) {
        return Database.getRow(sql);
    }
//获取用户信息
    public Admin SearchAdmin(String sql) {
        return new Dbadmin(sql);
    }
//查询新闻列表
    public Collection ListNew(int page, String sql) {
        return new Dbnew().Select(page, sql);
    }
    public Collection ListNew(String sql) {
        return new Dbnew().Select(sql);
    }
//获取新闻信息
    public New SearchNew(String sql) {
        return new Dbnew(sql);
    }
    //添加新闻
    public boolean CreateNew(HttpServletRequest request) {
        return new Dbnew(request).Insert();
    }
    //删除新闻
    public boolean DeleteNew(String sql) {
        return Database.Delete(FinalConstants.DELETE_NEW + sql);
    }
    public Collection ListModel(int page, String sql) {
        return new Dbmodel().Select(page, sql);
    }
    public Collection ListModel(String sql) {
    	 return new Dbmodel().Select(sql);
	}
    public Model SearchModel(String sql) {
        return new Dbmodel(sql);
    }
    public boolean CreateModel(HttpServletRequest request) {
        return new Dbmodel(request).Insert();
    }
    public boolean DeleteModel(String sql) {
        return Database.Delete(FinalConstants.DELETE_MODEL + sql);
    }
    public Collection ListLearn(int page, String sql) {
        return new Dblearn().Select(page, sql);
    }
    public Collection ListLearn(String sql) {
    	return new Dblearn().Select(sql);
	}
    public Learn SearchLearn(String sql) {
        return new Dblearn(sql);
    }
    public boolean CreateLearn(HttpServletRequest request) {
        return new Dblearn(request).Insert();
    }
    public boolean DeleteLearn(String sql) {
        return Database.Delete(FinalConstants.DELETE_LEARN + sql);
    }
    public Collection ListSeaSoul(int page, String sql) {
    	return new DbseaSoul().Select(page, sql);
    }
	public Collection ListSeaSoul(String sql) {
		return new DbseaSoul().Select(sql);
	}
    public SeaSoul SearchSeaSoul(String sql) {
        return new DbseaSoul(sql);
    }
    public boolean CreateSeaSoul(HttpServletRequest request) {
        return new DbseaSoul(request).Insert();
    }
    public boolean DeleteSeaSoul(String sql) {
        return Database.Delete(FinalConstants.DELETE_SEASOUL + sql);
    }
    public Collection ListLiuyan(int page, String sql) {
    	return new Dbliuyan().Select(page, sql);
    }
	public Collection ListLiuyan(String sql) {
		return new Dbliuyan().Select(sql);
	}
    public Liuyan SearchLiuyan(String sql) {
        return new Dbliuyan(sql);
    }
    public boolean CreateLiuyan(HttpServletRequest request) {
        return new Dbliuyan(request).Insert();
    }
    public boolean DeleteLiuyan(String sql) {
        return Database.Delete(FinalConstants.DELETE_LIUYAN + sql);
    }
    public Collection ListGffc(int page, String sql) {
    	return new Dbgffc().Select(page, sql);
    }
	public Collection ListGffc(String sql) {
		return new Dbgffc().Select(sql);
	}
    public Gffc SearchGffc(String sql) {
        return new Dbgffc(sql);
    }
    public boolean CreateGffc(HttpServletRequest request) {
        return new Dbgffc(request).Insert();
    }
    public boolean DeleteGffc(String sql) {
        return Database.Delete(FinalConstants.DELETE_GFFC+ sql);
    }
  
}
