package com.xzit.springboot.dto;

public class CourseQryItem {
    private Integer xq;//学期
    private Integer yxid;//学院
    private String kcm;//课程名程
    private String skls;//授课老师

    public Integer getXq() {
        return xq;
    }

    public void setXq(Integer xq) {
        this.xq = xq;
    }

    public Integer getYxid() {
        return yxid;
    }

    public void setYxid(Integer yxid) {
        this.yxid = yxid;
    }

    public String getKcm() {
        return kcm;
    }

    public void setKcm(String kcm) {
        this.kcm = kcm;
    }

    public String getSkls() {
        return skls;
    }

    public void setSkls(String skls) {
        this.skls = skls;
    }
}
