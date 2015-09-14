package cn.core;
import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import cn.BasetableFactoryProxy;
import com.jspsmart.upload.Request;
import cn.model.*;
/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 2.0
 */
public abstract class BasetableFactory {
    private static final String classname = "cn.dao.DbBasetableFactory";
    private static BasetableFactory factory;
    public static BasetableFactory getInstance() {
        if (factory == null) {
            try {
                Class c = Class.forName(classname);
                factory = (BasetableFactory) c.newInstance();
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } catch (IllegalAccessException ex1) {
                ex1.printStackTrace();
            } catch (InstantiationException ex1) {
                ex1.printStackTrace();
            }
        }
        return new BasetableFactoryProxy(factory);
    }
    public abstract int getRow(String sql);
    public abstract Admin SearchAdmin(String sql);
    public abstract Collection ListNew(int page, String sql);
    public abstract Collection ListNew(String sql);
    public abstract New SearchNew(String sql);
    public abstract boolean CreateNew(HttpServletRequest request);
    public abstract boolean DeleteNew(String sql);
    public abstract Collection ListModel(int page, String sql);
    public abstract Collection ListModel(String sql);
    public abstract Model SearchModel(String sql);
    public abstract boolean CreateModel(HttpServletRequest request);
    public abstract boolean DeleteModel(String sql);
    public abstract Collection ListSeaSoul(int page, String sql);
    public abstract Collection ListSeaSoul(String sql);

    public abstract SeaSoul SearchSeaSoul(String sql);

    public abstract boolean CreateSeaSoul(HttpServletRequest request);

    public abstract boolean DeleteSeaSoul(String sql);
    
    public abstract Collection ListLearn(int page, String sql);
    
    public abstract Collection ListLearn(String sql);

    public abstract Learn SearchLearn(String sql);

    public abstract boolean CreateLearn(HttpServletRequest request);

    public abstract boolean DeleteLearn(String sql);
    
    public abstract Collection ListLiuyan(int page, String sql);
    
    public abstract Collection ListLiuyan(String sql);

    public abstract Liuyan SearchLiuyan(String sql);

    public abstract boolean CreateLiuyan(HttpServletRequest request);

    public abstract boolean DeleteLiuyan(String sql);
    
    public abstract Collection ListGffc(int page, String sql);
    
    public abstract Collection ListGffc(String sql);

    public abstract Gffc SearchGffc(String sql);

    public abstract boolean CreateGffc(HttpServletRequest request);

    public abstract boolean DeleteGffc(String sql);
    
    
}