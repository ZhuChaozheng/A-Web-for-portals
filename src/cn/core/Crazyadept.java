package cn.core;

import javax.servlet.http.HttpSession;

import cn.model.Admin;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 2.0
 */

public class Crazyadept {
    public Crazyadept() {
    }
    public static boolean UserIsOK(HttpSession session) {
        Admin u = (Admin) session.getAttribute("user");
        if (u == null || u.getAid() == null || "".equals(u.getAid())) {
            return false;
        } else {
            return true;
        }
    }
  }
