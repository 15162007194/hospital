package com.xzit.springboot.entity;

public class Term {
    private Integer termid;

    private String termname;

    private Integer state;

    public Integer getTermid() {
        return termid;
    }

    public void setTermid(Integer termid) {
        this.termid = termid;
    }

    public String getTermname() {
        return termname;
    }

    public void setTermname(String termname) {
        this.termname = termname == null ? null : termname.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}