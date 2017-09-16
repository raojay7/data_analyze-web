package com.data_analyze.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by liujie on 2017/3/29.
 */

@Controller
public class HomeAction{

    public static final int DEFAULT_PAGE = 25;

    @RequestMapping({"/","/home"})

    public String showHomePage(Map<String,Object> model)
    {

        model.put("PAGE",DEFAULT_PAGE);

        return "/main.jsp";

    }

    @RequestMapping({"/","sys_home"})

    public String showSysHome(){

       return "/WEB-INF/sys/index.jsp";
    }

    @RequestMapping({"/","getRequestData"})
    public String getRequestData(@RequestParam("username")String username , Model model){

        System.out.println("========="+username+"=========");

        return "/main.jsp";

    }

    @RequestMapping({"/","sys_error"})
    public String toError(){

        return "forward:/sys/WEB-INF/error.jsp";
    }

    @RequestMapping("/front_home")
    public String showFrontHome() {
        return "/WEB-INF/front/index.jsp";
    }

    @RequestMapping("/work_data_select")
    public String workDataSelect() {
        return "/WEB-INF/front/work_data_select.jsp";
    }


}
