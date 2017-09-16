package com.data_analyze.paper.action;

import com.data_analyze.paper.service.PaperService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by liujie on 2017/3/17.
 */

@Controller

@RequestMapping("/paper")
public class PaperAction {


    private static int count = 1;

    @Resource
    private PaperService paperService;

    @RequestMapping(value = "/insert")
    public String insert() throws Exception
    {


        if (count == 1) {

            File teacherTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_papers_table.xlsx");

            paperService.importPaper(teacherTable, ".xlsx", 2015);

            teacherTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_papers_table.xlsx");

            paperService.importPaper(teacherTable, ".xlsx", 2016);

            count++;

        }
        System.out.println("insert_paper_ok!!!");

        return "forward:/main.jsp";
    }


}
