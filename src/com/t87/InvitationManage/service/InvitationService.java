package com.t87.InvitationManage.service;

import com.t87.InvitationManage.pojo.Invitation;
import java.util.List;

/**
 * 帖子
 */
public interface InvitationService {

    //查询记录数
    public int count();

    //查看所有的发帖信息
    public List<Invitation> getInvitations(Integer currentPage,Integer pageSize);

    //删除该条发帖及相关回复
    public boolean deleteInvitation(Integer id);

}
