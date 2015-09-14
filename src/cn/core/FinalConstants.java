package cn.core;

public final class FinalConstants {


    //parameter
    public static int STEP = 8; //·­Ò³²½³¤

    //admin
    public static final String SELECT_ADMIN = "SELECT * FROM (admin) ";
    //new
    public static final String INSERT_NEW =
        "INSERT INTO new (utime,title,npic,content,author,click,lid,bid,source,isDynamic) VALUES(now(),?,?,?,?,?,?,?,?,?)";
    public static final String UPDATE_NEW=
    		"UPDATE (new) SET title=?,content=? where nid=?";
    public static final String SELECT_NEW = "SELECT * FROM (new) ";
    public static final String DELETE_NEW = "DELETE FROM new ";

    //model
    public static final String INSERT_MODEL =
        "INSERT INTO model (utime,name,summary,content,mpic,click) VALUES(now(),?,?,?,?,?)";
    public static final String UPDATE_MODEL = "UPDATE (model) SET name=?,summary=?,content=? where mid=?";
    public static final String SELECT_MODEL = "SELECT * FROM (model) ";
    public static final String DELETE_MODEL = "DELETE FROM model ";

    //seasoul
    public static final String INSERT_SEASOUL =
    	"INSERT INTO seasoul (name,link,clicktime,sx) VALUES(?,?,?,?)";
    public static final String SELECT_SEASOUL = "SELECT * FROM (seasoul) ";
    public static final String UPDATE_SEASOUL="UPDATE (seasoul) SET name=?,link=?,sx=? where ssid=?";
    public static final String DELETE_SEASOUL = "DELETE FROM seasoul ";
  //learn
    public static final String INSERT_LEARN =
    	"INSERT INTO learn (title,author,content,utime,click) VALUES(?,?,?,now(),?)";
    public static final String UPDATE_LEARN =
        "UPDATE (learn) SET title=?,author=?,content=? where lid=?";
    public static final String SELECT_LEARN = "SELECT * FROM (learn) ";
    public static final String DELETE_LEARN = "DELETE FROM learn ";
  //liuyan
    public static final String INSERT_LIUYAN =
    	"INSERT INTO liuyan (title,name,tel,mail,content,utime) VALUES(?,?,?,?,?,now())";
    public static final String SELECT_LIUYAN = "SELECT * FROM (liuyan) ";
    public static final String DELETE_LIUYAN = "DELETE FROM liuyan ";
    //gffc
    public static final String INSERT_GFFC=
    		"insert into gffc (name,gpic) values(?,?)";
    public static final String SELECT_GFFC="select * from (gffc) ";
    public static final String DELETE_GFFC="delete from gffc ";
}
