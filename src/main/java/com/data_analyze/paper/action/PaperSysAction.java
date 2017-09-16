package com.data_analyze.paper.action;

import com.data_analyze.core.entity.Page;
import com.data_analyze.paper.entity.Paper;
import com.data_analyze.paper.service.PaperSysService;
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
@RequestMapping(value = "/sys_papers")

public class PaperSysAction {


    @Resource
    private PaperSysService paperSysService;

    @RequestMapping("/selectUI")
    public String selectUI(){
        return "forward:/WEB-INF/sys/papers/selectUI.jsp";
    }

//    年份选择

    @RequestMapping(value = "/select")
    public String select(HttpServletRequest request, HttpSession session){

        //用户选择年份存入session
        String SELECT = request.getParameter("SELECT");

        System.out.println("============="+SELECT+"==============");

        session.setAttribute("SELECT",SELECT);

        return "forward:/sys_papers/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(){

        return "forward:/WEB-INF/sys/papers/addUI.jsp";
    }


    @RequestMapping(value = "/editUI")
    public String editUI(HttpServletRequest request,HttpSession session,Model model){

        Paper paper = new Paper();

        String id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        paper.set_id(Integer.parseInt(id));

        paper = paperSysService.selectDynamic("papers"+year,paper);

        model.addAttribute("paper",paper);

        return "forward:/WEB-INF/sys/papers/editUI.jsp";
    }

    @RequestMapping(value = "/add")
    public String add(HttpSession httpSession,Paper paper){

        System.out.println(paper);

        String year = (String) httpSession.getAttribute("SELECT");


        try {
            paperSysService.insertDynamic(paper,"papers"+year);
        }catch (Exception e){
            e.printStackTrace();
            return "forward:/sys_error.do";
        }




        return "redirect:/sys_papers/selectPageListDynamic.do";
    }


    @RequestMapping(value = "/selectPageListDynamic")
    public String selectPageListDynamic(HttpServletRequest request, Model model,HttpSession httpSession){

        Page<Paper> page = new Page<Paper>();

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

        paperSysService.selectPageListDynamic(page,"papers"+tableName);

        model.addAttribute("pageResult",page);

        return "forward:/WEB-INF/sys/papers/listUI.jsp";
    }



    @RequestMapping(value = "/delete_dynamic")
    public String deleteDynamic(HttpServletRequest request , HttpSession session){

        Paper paper = new Paper();

        String year = (String) session.getAttribute("SELECT");

        String id = request.getParameter("id");

        paper.set_id(Integer.parseInt(id));

        paperSysService.deleteDynamic("papers"+year,paper);

        return "redirect:/sys_papers/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/update_dynamic")
    public String updateDynamic(Paper paper,HttpSession session,HttpServletRequest request){

        System.out.println("project to update"+paper);

        String paper_id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        paper.set_id(Integer.parseInt(paper_id));

        if (paper!=null){

            paperSysService.updateDynamic("papers"+year,paper);

        }

        return "redirect:/sys_papers/selectPageListDynamic.do";

    }


}
