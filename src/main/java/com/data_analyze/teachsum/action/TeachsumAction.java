package com.data_analyze.teachsum.action;

import com.data_analyze.teachsum.service.TeachsumService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by jiacheng on 17-3-19.
 */
@Controller
@RequestMapping("/teachsum")
public class TeachsumAction {
    @Resource
    private TeachsumService teachsumService;

    private static int count = 1;

    @RequestMapping("/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            File teachsumTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_teachsums_table.xlsx");
            teachsumService.importTeachsum(teachsumTable, ".xlsx", 2015);
            System.out.println("imported teachsum2015");

            teachsumTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_teachsums_table.xlsx");
            teachsumService.importTeachsum(teachsumTable, ".xlsx", 2016);
            System.out.println("imported teachsum2016");

            count++;
        }
        return "forward:/main.jsp";
    }
}
