package com.t87.InvitationManage.pojo;

import java.util.Date;

/**
 * 帖子
 */
public class Invitation {
    private Integer id;     //帖子编号
    private String title;   //帖子标题
    private String summary; //帖子摘要
    private String author;  //作者
    private Date createdate;//创建时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}
