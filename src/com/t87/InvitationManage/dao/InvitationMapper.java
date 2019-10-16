package com.t87.InvitationManage.dao;

import com.t87.InvitationManage.pojo.Invitation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 帖子
 */
public interface InvitationMapper {

    //查询记录数
    public int count();


    //查看所有的发帖信息
    public List<Invitation> getInvitations(@Param("currentPage")Integer currentPage,
                                           @Param("pageSize") Integer pageSize);

    //删除该条发帖
    public int deleteInvitation(@Param("id")Integer id);

}
