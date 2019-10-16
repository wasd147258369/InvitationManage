package com.t87.InvitationManage.service;

import com.t87.InvitationManage.dao.InvitationMapper;
import com.t87.InvitationManage.dao.ReplyDetailMapper;
import com.t87.InvitationManage.pojo.Invitation;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;


/**
 * 帖子
 */
@Service
public class InvitationServiceImpl implements InvitationService {

    @Resource
    InvitationMapper invitationMapper;
    @Resource
    ReplyDetailMapper replyDetailMapper;

    //查询记录数
    @Override
    public int count() {
        return invitationMapper.count();
    }

    //查看所有的发帖信息
    @Override
    public List<Invitation> getInvitations(Integer currentPage,Integer pageSize) {
        Integer num=(currentPage-1)*pageSize;
        return invitationMapper.getInvitations(num,pageSize);
    }

    //删除该条发帖及相关回复
    @Override
    public boolean deleteInvitation(Integer id) {
        boolean flag=false;
        if(replyDetailMapper.deleteReplyDetail(id)>0){
            flag=true;
        }
        if(invitationMapper.deleteInvitation(id)>0){
            flag=true;
        }
        return flag;
    }

}
