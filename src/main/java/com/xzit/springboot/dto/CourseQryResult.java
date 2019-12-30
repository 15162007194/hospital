package com.xzit.springboot.dto;

import com.xzit.springboot.entity.Curworkload;

public class CourseQryResult extends Curworkload{
    private String xqmc;
    private String xymc;

    public String getXqmc() {
        return xqmc;
    }

    public void setXqmc(String xqmc) {
        this.xqmc = xqmc;
    }

    public String getXymc() {
        return xymc;
    }

    public void setXymc(String xymc) {
        this.xymc = xymc;
    }
}
