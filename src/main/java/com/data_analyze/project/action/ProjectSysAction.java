package com.data_analyze.project.action;

import com.data_analyze.core.entity.Page;
import com.data_analyze.project.entity.Project;
import com.data_analyze.project.service.ProjectSysService;
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
@RequestMapping(value = "/sys_projects")
public class ProjectSysAction {

    @Resource
    private ProjectSysService projectSysService;

    @RequestMapping("/selectUI")
    public String selectUI(){
        return "forward:/WEB-INF/sys/projects/selectUI.jsp";
    }

//    年份选择

    @RequestMapping(value = "select")
    public String select(HttpServletRequest request, HttpSession session){

        //用户选择年份存入session
        String SELECT = request.getParameter("SELECT");

        System.out.println("============="+SELECT+"==============");

        session.setAttribute("SELECT",SELECT);

        return "forward:/sys_projects/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/addUI")
    public String addUI(){

        return "forward:/WEB-INF/sys/projects/addUI.jsp";
    }


    @RequestMapping(value = "/editUI")
    public String editUI(HttpServletRequest request,HttpSession session,Model model){

        Project project = new Project();

        String id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        project.set_id(Integer.parseInt(id));

        project = projectSysService.selectDynamic("projects"+year,project);

        model.addAttribute("project",project);

        return "forward:/WEB-INF/sys/projects/editUI.jsp";
    }

    @RequestMapping(value = "/add")
    public String add(HttpSession httpSession,Project project){

        System.out.println(project);

        String year = (String) httpSession.getAttribute("SELECT");

        projectSysService.insertDynamic(project,"projects"+year);

        return "redirect:/sys_projects/selectPageListDynamic.do";
    }


    @RequestMapping(value = "/selectPageListDynamic")
    public String selectPageListDynamic(HttpServletRequest request, Model model,HttpSession httpSession){

        Page<Project> page = new Page<Project>();

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

        projectSysService.selectPageListDynamic(page,"projects"+tableName);

        model.addAttribute("pageResult",page);

        return "forward:/WEB-INF/sys/projects/listUI.jsp";
    }



    @RequestMapping(value = "/delete_dynamic")
    public String deleteDynamic(HttpServletRequest request , HttpSession session){

        Project project = new Project();

        String year = (String) session.getAttribute("SELECT");

        String id = request.getParameter("id");

        project.set_id(Integer.parseInt(id));

        projectSysService.deleteDynamic("projects"+year,project);

        return "redirect:/sys_projects/selectPageListDynamic.do";
    }

    @RequestMapping(value = "/update_dynamic")
    public String updateDynamic(Project project,HttpSession session,HttpServletRequest request){

        System.out.println("project to update"+project);

        String id = request.getParameter("id");

        String year = (String) session.getAttribute("SELECT");

        project.set_id(Integer.parseInt(id));

        if (project!=null){

            projectSysService.updateDynamic("projects"+year,project);

        }

        return "redirect:/sys_projects/selectPageListDynamic.do";

    }


}


