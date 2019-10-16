package com.t87.InvitationManage.dao;

import com.t87.InvitationManage.pojo.ReplyDetail;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 帖子回复
 */
public interface ReplyDetailMapper {

    /**
     * 查看回复
     */
    public List<ReplyDetail> getReplyDetails(@Param("id") Integer id);

    /**
     * 添加回复
     */
    public int saveReply(ReplyDetail replyDetail);

    /**
     * 删除回复
     */
    public int deleteReplyDetail(@Param("id")Integer id);

}
