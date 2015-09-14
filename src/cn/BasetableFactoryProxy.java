package cn;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import cn.core.BasetableFactory;

import com.jspsmart.upload.Request;

import cn.model.*;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */
public class BasetableFactoryProxy extends BasetableFactory {
    private BasetableFactory factory;
    public BasetableFactoryProxy(BasetableFactory factory) {
        this.factory = factory;
    }

    public int getRow(String sql) {
        return factory.getRow(sql);
    }

    public Admin SearchAdmin(String sql) {
        return factory.SearchAdmin(sql);
    }

    public Collection ListNew(int page, String sql) {
        return factory.ListNew(page, sql);
    }
    public Collection ListNew(String sql) {
        return factory.ListNew(sql);
    }
    public New SearchNew(String sql) {
        return factory.SearchNew(sql);
    }

    public boolean CreateNew(HttpServletRequest request) {
        return factory.CreateNew(request);
    }

    public boolean DeleteNew(String sql) {
        return factory.DeleteNew(sql);
    }
    public Collection ListModel(int page, String sql) {
        return factory.ListModel(page, sql);
    }

    public Collection ListModel(String sql) {
        return factory.ListModel(sql);
    }
    public Model SearchModel(String sql) {
        return factory.SearchModel(sql);
    }

    public boolean CreateModel(HttpServletRequest request) {
        return factory.CreateModel(request);
    }

    public boolean DeleteModel(String sql) {
        return factory.DeleteModel(sql);
    }
    public Collection ListSeaSoul(int page, String sql) {
        return factory.ListSeaSoul(page, sql);
    }

    public Collection ListSeaSoul(String sql) {
        return factory.ListSeaSoul(sql);
    }
    public SeaSoul SearchSeaSoul(String sql) {
        return factory.SearchSeaSoul(sql);
    }

    public boolean CreateSeaSoul(HttpServletRequest request) {
        return factory.CreateSeaSoul(request);
    }

    public boolean DeleteSeaSoul(String sql) {
        return factory.DeleteSeaSoul(sql);
    }
    public Collection ListLearn(int page, String sql) {
        return factory.ListLearn(page, sql);
    }

    public Collection ListLearn(String sql) {
        return factory.ListLearn(sql);
    }
    public Learn SearchLearn(String sql) {
        return factory.SearchLearn(sql);
    }

    public boolean CreateLearn(HttpServletRequest request) {
        return factory.CreateLearn(request);
    }

    public boolean DeleteLearn(String sql) {
        return factory.DeleteLearn(sql);
    }
    public Collection ListLiuyan(int page, String sql) {
        return factory.ListLiuyan(page, sql);
    }

    public Collection ListLiuyan(String sql) {
        return factory.ListLiuyan(sql);
    }
    public Liuyan SearchLiuyan(String sql) {
        return factory.SearchLiuyan(sql);
    }

    public boolean CreateLiuyan(HttpServletRequest request) {
        return factory.CreateLiuyan(request);
    }

    public boolean DeleteLiuyan(String sql) {
        return factory.DeleteLiuyan(sql);
    }
    public Collection Gffc(int page, String sql) {
        return factory.ListGffc(page, sql);
    }

    public Collection ListGffc(String sql) {
        return factory.ListGffc(sql);
    }
    public Gffc SearchGffc(String sql) {
        return factory.SearchGffc(sql);
    }

    public boolean CreateGffc(HttpServletRequest request) {
        return factory.CreateGffc(request);
    }

    public boolean DeleteGffc(String sql) {
        return factory.DeleteGffc(sql);
    }

	public Collection ListGffc(int page, String sql) {
		 return factory.ListGffc(sql);
	}
}
