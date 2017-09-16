package com.data_analyze.teach.action;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachSysService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by liujie on 2017/4/1.
 */

@Controller

@RequestMapping("/sys_teach")

public class TeachSysAction {

    @Resource
    private TeachSysService teachSysService;

    @RequestMapping(value = "/selectUI")
    public String selectUI(){
        return "forward:/WEB-INF/sys/teach/selectUI.jsp";
    }

    @RequestMapping(value = "select")
    public String select(HttpServletRequest request, HttpSession session){

        //用户选择年份存入session
        String SELECT = request.getParameter("SELECT");

        System.out.println("============="+SELECT+"==============");

        session.setAttribute("SELECT",SELECT);

        return "forward:/sys_teach/selectPageListDynamic.do";
    }




    @RequestMapping(value = "/addUI")
    public String addUI(){

        return "forward:/WEB-INF/sys/teach/addUI.jsp";
    }

    @RequestMapping(value = "/editUI")
    public String editUI(HttpServletRequest request,HttpSession session,Model model){

        Teach teach = new Teach();

        String id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        teach.set_id(Integer.parseInt(id));

        teach = teachSysService.selectDynamic("teach"+year,teach);

        model.addAttribute("teach",teach);

        return "forward:/WEB-INF/sys/teach/editUI.jsp";
    }


    @RequestMapping(value = "/add")
    public String add(HttpSession httpSession,Teach teach){

        System.out.println(teach);

        String year = (String) httpSession.getAttribute("SELECT");

        teachSysService.insertDynamic(teach,"teach"+year);

        return "redirect:/sys_teach/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/selectPageListDynamic")
    public String selectPageListDynamic(HttpServletRequest request, Model model,HttpSession httpSession){

        Page<Teach> page = new Page<>();

        String tableName = (String) httpSession.getAttribute("SELECT");

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

        teachSysService.selectPageListDynamic(page,"teach"+tableName);

        model.addAttribute("pageResult",page);

        return "forward:/WEB-INF/sys/teach/listUI.jsp";
    }



    @RequestMapping(value = "/delete_dynamic")
    public String deleteDynamic(HttpServletRequest request , HttpSession session){

        Teach teach = new Teach();

        String year = (String) session.getAttribute("SELECT");

        String id = request.getParameter("id");

        teach.set_id(Integer.parseInt(id));

        teachSysService.deleteDynamic("teach"+year,teach);

        return "redirect:/sys_teach/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/update_dynamic")
    public String updateDynamic(Teach teach,HttpSession session,HttpServletRequest request){

        System.out.println("teach to update"+teach);

        String teach_id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        teach.set_id(Integer.parseInt(teach_id));

        if (teach!=null){

            teachSysService.updateDynamic("teach"+year,teach);

        }

        return "redirect:/sys_teach/selectPageListDynamic.do";

    }

}
