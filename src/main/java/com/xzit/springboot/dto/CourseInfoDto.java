package com.xzit.springboot.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CourseInfoDto {
    private Integer id;
    @NotNull(message="所属学期不能为空")
    private Integer xq;
    @NotNull(message="课程代号不能为空")
    private String kch;
    private String kxh;
    @Size(min=3,max=30,message="课程长度必须介于3-30之间")
    @Pattern(regexp="^[\\w\\u4e00-\\u9fa5]{0,10}$",message="课程名称应由字母数字与中文组成")
    private String kcm;

    private String skls;

    private String lszc;

    private Integer yxid;

    private String kcsx;

    private String bjmc;

    private Integer krl;

    private Integer xkrs;

    private Integer zxs;

    private Integer skxs;

    private Integer sjxs;

    private Integer syxs;

    private Integer mzxs;

    private Float xf;

    private String kclx;

    private Integer sfcxk;                                  ;

    private String bz;

    private String kclx1;

    private String kclx2;

    private String kclx3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getXq() {
        return xq;
    }

    public void setXq(Integer xq) {
        this.xq = xq;
    }

    public String getKch() {
        return kch;
    }

    public void setKch(String kch) {
        this.kch = kch == null ? null : kch.trim();
    }

    public String getKxh() {
        return kxh;
    }

    public void setKxh(String kxh) {
        this.kxh = kxh == null ? null : kxh.trim();
    }

    public String getKcm() {
        return kcm;
    }

    public void setKcm(String kcm) {
        this.kcm = kcm == null ? null : kcm.trim();
    }

    public String getSkls() {
        return skls;
    }

    public void setSkls(String skls) {
        this.skls = skls == null ? null : skls.trim();
    }

    public String getLszc() {
        return lszc;
    }

    public void setLszc(String lszc) {
        this.lszc = lszc == null ? null : lszc.trim();
    }

    public Integer getYxid() {
        return yxid;
    }

    public void setYxid(Integer yxid) {
        this.yxid = yxid;
    }

    public String getKcsx() {
        return kcsx;
    }

    public void setKcsx(String kcsx) {
        this.kcsx = kcsx == null ? null : kcsx.trim();
    }

    public String getBjmc() {
        return bjmc;
    }

    public void setBjmc(String bjmc) {
        this.bjmc = bjmc == null ? null : bjmc.trim();
    }

    public Integer getKrl() {
        return krl;
    }

    public void setKrl(Integer krl) {
        this.krl = krl;
    }

    public Integer getXkrs() {
        return xkrs;
    }

    public void setXkrs(Integer xkrs) {
        this.xkrs = xkrs;
    }

    public Integer getZxs() {
        return zxs;
    }

    public void setZxs(Integer zxs) {
        this.zxs = zxs;
    }

    public Integer getMzxs() {
        return mzxs;
    }

    public void setMzxs(Integer mzxs) {
        this.mzxs = mzxs;
    }

    public Integer getSkxs() {
        return skxs;
    }

    public void setSkxs(Integer skxs) {
        this.skxs = skxs;
    }

    public Integer getSjxs() {
        return sjxs;
    }

    public void setSjxs(Integer sjxs) {
        this.sjxs = sjxs;
    }

    public Integer getSyxs() {
        return syxs;
    }

    public void setSyxs(Integer syxs) {
        this.syxs = syxs;
    }

    public Float getXf() {
        return xf;
    }

    public void setXf(Float xf) {
        this.xf = xf;
    }

    public String getKclx() {
        return kclx;
    }

    public void setKclx(String kclx) {
        this.kclx = kclx == null ? null : kclx.trim();
    }

    public Integer getSfcxk() {
        return sfcxk;
    }

    public void setSfcxk(Integer sfcxk) {
        this.sfcxk = sfcxk;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz == null ? null : bz.trim();
    }

    public String getKclx1() {
        return kclx1;
    }

    public void setKclx1(String kclx1) {
        this.kclx1 = kclx1 == null ? null : kclx1.trim();
    }

    public String getKclx2() {
        return kclx2;
    }

    public void setKclx2(String kclx2) {
        this.kclx2 = kclx2 == null ? null : kclx2.trim();
    }

    public String getKclx3() {
        return kclx3;
    }

    public void setKclx3(String kclx3) {
        this.kclx3 = kclx3 == null ? null : kclx3.trim();
    }

}