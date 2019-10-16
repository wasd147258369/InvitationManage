package com.t87.InvitationManage.controller;

import com.t87.InvitationManage.pojo.ReplyDetail;
import com.t87.InvitationManage.service.ReplyDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 帖子回复
 */
@Controller
public class ReplyDetailController {

    @Resource
    ReplyDetailService replyDetailService;

    /**
     * 跳转到--查看回复
     */
    @RequestMapping("/reply")
    public String reply(@RequestParam("id")Integer id, Model model){
        List<ReplyDetail> list=replyDetailService.getReplyDetails(id);
        model.addAttribute("id",id);
        model.addAttribute("reply",list);
        return "replymessage";
    }

    /**
     * 添加回复
     */
    @RequestMapping("/addReply")
    public String addReply(@ModelAttribute("ReplyDetail")ReplyDetail replyDetail,
                           @RequestParam("id")Integer id,
                           Model model){
        model.addAttribute("id",id);
        return "addreply";
    }

    /**
     * 保存添加的回复
     */
    @RequestMapping("/saveReply")
    public String saveReply(ReplyDetail replyDetail,
                            HttpServletRequest request){
        //创建时间
        replyDetail.setCreatedate(new Date());
        if(replyDetailService.saveReply(replyDetail)){
            request.setAttribute("ts","添加回复成功！");
            return "forward:reply?id="+replyDetail.getInvId();
        }
        return "addreply";
    }

}
