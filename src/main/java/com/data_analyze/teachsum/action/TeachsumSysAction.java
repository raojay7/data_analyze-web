package com.data_analyze.teachsum.action;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teachsum.entity.Teachsum;
import com.data_analyze.teachsum.service.TeachsumSysService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by liujie on 2017/4/2.
 */


@Controller
@RequestMapping(value = "/sys_teachsum")
public class TeachsumSysAction {

    @Resource
    private TeachsumSysService teachsumSysService;

    @RequestMapping("/selectUI")
    public String selectUI(){

        return "forward:/WEB-INF/sys/teachsum/selectUI.jsp";
    }

//    年份选择

    @RequestMapping(value = "/select")
    public String select(HttpServletRequest request, HttpSession session){

        //用户选择年份存入session
        String SELECT = request.getParameter("SELECT");

        System.out.println("============="+SELECT+"==============");

        session.setAttribute("SELECT",SELECT);

        return "forward:/sys_teachsum/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(){

        return "forward:/WEB-INF/sys/teachsum/addUI.jsp";
    }


    @RequestMapping(value = "/editUI")
    public String editUI(HttpServletRequest request,HttpSession session,Model model){

        Teachsum teachsum = new Teachsum();

        String id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        teachsum.set_id(Integer.parseInt(id));

        teachsum = teachsumSysService.selectDynamic("teachsum"+year,teachsum);

        model.addAttribute("teachsum",teachsum);

        return "forward:/WEB-INF/sys/teachsum/editUI.jsp";
    }

    @RequestMapping(value = "/add")
    public String add(HttpSession httpSession,Teachsum teachsum){

        System.out.println(teachsum);

        String year = (String) httpSession.getAttribute("SELECT");

        teachsumSysService.insertDynamic(teachsum,"teachsum"+year);

        return "redirect:/sys_teachsum/selectPageListDynamic.do";
    }


    @RequestMapping(value = "/selectPageListDynamic")
    public String selectPageListDynamic(HttpServletRequest request, Model model,HttpSession httpSession){

        Page<Teachsum> page = new Page<Teachsum>();

        String year = (String) httpSession.getAttribute("SELECT");

        String pageNo = request.getParameter("pageNo");

        String keyWord = request.getParameter("key_word");

        if (keyWord == null){
            keyWord = "";
        }

        System.out.println(pageNo);

        if (null == pageNo){
            pageNo = "1";
        }

        int pageIndex = Integer.parseInt(pageNo);

        if (pageIndex <= 1){
            pageIndex = 1;
        }

        page.setPage(pageIndex);
        page.setKeyWord("%"+keyWord+"%");
        page.setRows(10);

        teachsumSysService.selectPageListDynamic(page,"teachsum"+year);

        model.addAttribute("pageResult",page);

        return "forward:/WEB-INF/sys/teachsum/listUI.jsp";
    }



    @RequestMapping(value = "/delete_dynamic")
    public String deleteDynamic(HttpServletRequest request , HttpSession session){

        Teachsum teachsum = new Teachsum();

        String year = (String) session.getAttribute("SELECT");

        String id = request.getParameter("id");

        teachsum.set_id(Integer.parseInt(id));

        teachsumSysService.deleteDynamic("teachsum"+year,teachsum);

        return "redirect:/sys_teachsum/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/update_dynamic")
    public String updateDynamic(Teachsum teachsum,HttpSession session,HttpServletRequest request){

        System.out.println("teachsum to update"+teachsum);

        String teachsum_id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        teachsum.set_id(Integer.parseInt(teachsum_id));

        if (teachsum!=null){

            teachsumSysService.updateDynamic("teachsum"+year,teachsum);

        }

        return "redirect:/sys_teachsum/selectPageListDynamic.do";

    }


}
