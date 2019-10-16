package com.t87.InvitationManage.service;

import com.t87.InvitationManage.dao.ReplyDetailMapper;
import com.t87.InvitationManage.pojo.ReplyDetail;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

/**
 * 帖子回复
 */
@Service
public class ReplyDetailServiceImpl implements ReplyDetailService {

    @Resource
    ReplyDetailMapper replyDetailMapper;

    /**
     * 查看回复
     */
    @Override
    public List<ReplyDetail> getReplyDetails(Integer id) {
        return replyDetailMapper.getReplyDetails(id);
    }

    /**
     * 添加回复
     */
    @Override
    public boolean saveReply(ReplyDetail replyDetail) {
        if(replyDetailMapper.saveReply(replyDetail)>0){
            return true;
        }else {
            return false;
        }
    }

}
