package com.data_analyze.publication.action;

import com.data_analyze.publication.service.PublicationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;

/**
 * Created by jiacheng on 17-3-18.
 */
@Controller
@RequestMapping("/publication")
public class PublicationAction {
    private static int count = 1;

    @Resource
    private PublicationService publicationService;

    @RequestMapping(value = "/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            File publicationTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_publications_table.xlsx");
            publicationService.importPublication(publicationTable, ".xlsx", 2015);
            System.out.println("imported publication2015");

            publicationTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_publications_table.xlsx");
            publicationService.importPublication(publicationTable, ".xlsx", 2016);
            System.out.println("imported publication2016");

            count++;
        }
        return "forward:/main.jsp";
    }
}
