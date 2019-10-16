package com.t87.InvitationManage.controller;

import com.t87.InvitationManage.pojo.Invitation;
import com.t87.InvitationManage.service.InvitationService;
import com.t87.InvitationManage.tools.PageSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 帖子
 */
@Controller
public class InvitationController {

    @Resource
    InvitationService invitationService;

    //查看所有的发帖信息
    //按照创建时间降序排列
    @RequestMapping("/invitations")
    public String getInvitations(Model model,
                                 @RequestParam(value = "pageIndex",required =false)Integer pageIndex){

        //设置页面容量
        int pageSize =4;
        //当前页码
        int currentPage = 1;
        //当前页码
        if (pageIndex != null) {
            try {
                currentPage = Integer.valueOf(pageIndex);
            } catch (NumberFormatException e) {
                throw new NumberFormatException("数字格式化异常!");
            }
        }

        //查询记录数
        int totalCount=invitationService.count();

        //分页-JavaBean
        PageSupport support=new PageSupport();
        support.setCurrentPageNo(currentPage);
        support.setPageSize(pageSize);
        support.setTotalCount(totalCount);

        List<Invitation> invitations=invitationService.getInvitations(currentPage,pageSize);
        model.addAttribute("invitations",invitations);
        model.addAttribute("currentPageNo",support.getCurrentPageNo());
        model.addAttribute("totalPageCount",support.getTotalPageCount());
        return "invitationlist";
    }


    //删除该条发帖及相关回复
    @RequestMapping("/invitationDelete")
    public String invitationDelete(@RequestParam("id")Integer id, HttpServletRequest request){

        if(invitationService.deleteInvitation(id)){
            request.setAttribute("ts","删除成功！");
            return "forward:/invitations";
        }
        request.setAttribute("ts","删除失败！");
        return "forward:/invitations";
    }

}
