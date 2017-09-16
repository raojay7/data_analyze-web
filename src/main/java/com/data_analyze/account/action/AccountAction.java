package com.data_analyze.account.action;

import com.data_analyze.account.entity.Account;
import com.data_analyze.account.service.AccountService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by liujie on 2017/3/16.
 */

@Controller

@RequestMapping("/account")
public class AccountAction {


    @Resource
    private AccountService accountService;

    @RequestMapping(value = "/upvams_insert_2017")
    public String insert(HttpServletRequest request)
    {

        Account account = new Account();

        account.setAcc_id(1);

        account.setAcc_login("data_analyze1");

        account.setAcc_name("a");

        account.setAcc_pass("data_analyze1");

        accountService.insertAccount(account);

        account.setAcc_login("data_analyze2");

        account.setAcc_name("b");

        account.setAcc_pass("data_analyze2");

        accountService.insertAccount(account);

        account.setAcc_login("data_analyze3");

        account.setAcc_name("c");

        account.setAcc_pass("data_analyze3");

        accountService.insertAccount(account);

        account.setAcc_login("data_analyze4");

        account.setAcc_name("d");

        account.setAcc_pass("data_analyze4");

        accountService.insertAccount(account);

        account.setAcc_login("data_analyze5");

        account.setAcc_name("e");

        account.setAcc_pass("data_analyze5");

        accountService.insertAccount(account);


        request.setAttribute("msg","初始化用户成功!!!");
        System.out.println("insert_ok!!!");

        return "forward:/WEB-INF/sys/loginUI.jsp";
    }



    @RequestMapping(value = "/loginUI")
    public String loginUI(){

        return "forward:/WEB-INF/sys/loginUI.jsp";
    }

    @RequestMapping(value = "/login")
    public String login(Account account, HttpSession session, HttpServletRequest request){

        System.out.println("acc"+account);

        Account acc = accountService.login(account);

        if (acc!=null){

            session.setAttribute("USER",acc);

            return "forward:/sys_home.do";

        }else {
            request.setAttribute("msg","用户名或者密码错误！");
            return "forward:/account/loginUI.do";
        }

    }

    @RequestMapping(value = "/loginOut")
    public String loginOut(HttpSession session){

        session.invalidate();

        return "redirect:/account/loginUI.do";

    }


    @RequestMapping(value = "/hello")

    public String sayHello(){

        System.out.println("hello================");

        return "forward:/main.jsp";
    }






}
