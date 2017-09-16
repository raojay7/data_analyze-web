package com.data_analyze.teacher.action;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherSysService;
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

@RequestMapping("/sys_teacher")
public class TeacherSysAction {

    @Resource
    private TeacherSysService teacherSysService;

    @RequestMapping(value = "/listUI")

    public String listUI(){

        return "forward:/WEB-INF/sys/teacher/listUI.jsp";
    }

    @RequestMapping(value = "/addUI")

    public String addUI(){

        return "forward:/WEB-INF/sys/teacher/addUI.jsp";

    }


    @RequestMapping(value = "/add")
    public String add(Model model , Teacher teacher, HttpSession session){

        System.out.println(teacher);

        try {
            teacherSysService.insert(teacher);
        } catch (Exception e) {

            session.setAttribute("message","操作失败！");
            e.printStackTrace();
        }

        session.setAttribute("message","添加成功!");

        return "redirect:/sys_teacher/selectPageList.do";
    }


    @RequestMapping(value = "/selectPageList")
    public String selectPageList(HttpServletRequest request,Model model){

        Page<Teacher> page = new Page<Teacher>();

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

        teacherSysService.selectPage(page);

        model.addAttribute("pageResult",page);

        return "forward:/sys_teacher/listUI.do";
    }

//    编辑

    @RequestMapping(value = "/editUI")
    public String editUI(HttpServletRequest request,Model model){

        Teacher teacher = new Teacher();

        String salary_id = request.getParameter("salary_id");

        teacher.setSalary_id(salary_id);

        try {
            teacher = teacherSysService.select(teacher);

        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("teacher",teacher);

        return "forward:/WEB-INF/sys/teacher/editUI.jsp";
    }


    @RequestMapping(value = "/edit")
    public String edit(Teacher teacher){

        System.out.println("======="+teacher);

        if (teacher!=null){

            try {
                teacherSysService.update(teacher);

            } catch (Exception e) {

                e.printStackTrace();
            }

        }

        return "redirect:/sys_teacher/selectPageList.do";
    }

    @RequestMapping(value = "/delete")
    public String delete(HttpServletRequest request){

        Teacher teacher = new Teacher();

        String salary_id = request.getParameter("salary_id");

        teacher.setSalary_id(salary_id);

        try {

            teacherSysService.delete(teacher);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/sys_teacher/selectPageList.do";
    }


}
