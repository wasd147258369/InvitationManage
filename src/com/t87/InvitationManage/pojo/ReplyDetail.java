package com.t87.InvitationManage.pojo;

import java.util.Date;

/**
 * 帖子回复
 */
public class ReplyDetail {
    private Integer id;      //编号
    private Integer invId;   //帖子编号
    private String content;  //回复内容
    private String author;   //回复人昵称 <默认“匿名用户”>
    private Date createdate; //回复时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInvId() {
        return invId;
    }

    public void setInvId(Integer invId) {
        this.invId = invId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
