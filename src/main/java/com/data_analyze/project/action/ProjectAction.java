package com.data_analyze.project.action;

import com.data_analyze.paper.service.PaperService;
import com.data_analyze.project.service.ProjectService;
import com.data_analyze.utils.MapHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
@Controller
@RequestMapping(value = "/project")
public class ProjectAction {
    @Resource
    private ProjectService projectService;

    @Resource
    private PaperService paperService;

    static private int count = 1;

    @RequestMapping(value = "/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            File projectTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_projects_table.xlsx");
            projectService.importProject(projectTable, ".xlsx", 2015);
            System.out.println("imported projects2015");

            projectTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_projects_table.xlsx");
            projectService.importProject(projectTable, ".xlsx", 2016);
            System.out.println("imported projects2016");

            count++;
        }
        return "forward:/main.jsp";
    }



    @RequestMapping("/work_data_research")
    public String workDataResearch(Model model, HttpServletRequest request)
    {

        String year = request.getParameter("YEAR");

        if (year==null){
            year = "2010";
        }

        model.addAttribute("YEAR",year);

        /**
         *
         * @param year 年份 2010-2016
         * @return
         *
         * <String,,Integer>
         * String单位名 : key用拼音首字母大学来保存
         * (学院人均科研进账、计算机科学与技术系人均科研进账、
         * 电子信息工程系人均科研进账、电气与自动化系人均科研进账、
         * 计算中心人均科研进账、电工电子实验中心人均科研进账)
         * Integer
         * 各单位科研进账数
         */
        Map<String,Float> aveProjectMoneyData = projectService.getAveProjectMoneyData(year);

        model.addAttribute("AveProjectMoneyData",aveProjectMoneyData);

        Map<String,Float> aveProjectMoneyData2010 = projectService.getAveProjectMoneyData("2010");

        Map<String,Float> aveProjectMoneyData2011 = projectService.getAveProjectMoneyData("2011");

        Map<String,Float> aveProjectMoneyData2012 = projectService.getAveProjectMoneyData("2012");

        Map<String,Float> aveProjectMoneyData2013 = projectService.getAveProjectMoneyData("2013");

        Map<String,Float> aveProjectMoneyData2014 = projectService.getAveProjectMoneyData("2014");

        Map<String,Float> aveProjectMoneyData2015 = projectService.getAveProjectMoneyData("2015");

        Map<String,Float> aveProjectMoneyData2016 = projectService.getAveProjectMoneyData("2016");

        model.addAttribute("AveProjectMoneyData2010",aveProjectMoneyData2010);

        model.addAttribute("AveProjectMoneyData2011",aveProjectMoneyData2011);

        model.addAttribute("AveProjectMoneyData2012",aveProjectMoneyData2012);

        model.addAttribute("AveProjectMoneyData2013",aveProjectMoneyData2013);

        model.addAttribute("AveProjectMoneyData2014",aveProjectMoneyData2014);

        model.addAttribute("AveProjectMoneyData2015",aveProjectMoneyData2015);

        model.addAttribute("AveProjectMoneyData2016",aveProjectMoneyData2016);

        /**
         *
         * @param year 年份
         * @return
         *
         * <String,Float>
         *
         * String : 不同单位名：首字母大写
         *
         * Float ； 各单位总科研经费
         *
         */

        Map<String,Float> sumProjectMoneyData = projectService.getSumProjectMoneyData(year);

        model.addAttribute("SumProjectMoneyData",sumProjectMoneyData);


        /**
         *
         * @param year  年份
         * @return
         *
         * <String,Integer>
         *
         * 拼音首字母大写
         *(学院平均论文发表数（学院论文发表总数/学院个数）、计算机科学与技术系论文发表数、
         * 电子信息工程系论文发表数、电气与自动化系论文发表数、
         * 计算中心论文发表数、电工电子实验中心论文发表数)
         * Integer
         * 论文数
         */

        Map<String,Integer> PaperNumber = paperService.getPaperNumber(year);

        Map<String,Integer> PaperNumber2010 = paperService.getPaperNumber("2010");

        Map<String,Integer> PaperNumber2011 = paperService.getPaperNumber("2011");

        Map<String,Integer> PaperNumber2012 = paperService.getPaperNumber("2012");

        Map<String,Integer> PaperNumber2013 = paperService.getPaperNumber("2013");

        Map<String,Integer> PaperNumber2014 = paperService.getPaperNumber("2014");

        Map<String,Integer> PaperNumber2015 = paperService.getPaperNumber("2015");

        Map<String,Integer> PaperNumber2016 = paperService.getPaperNumber("2016");

        model.addAttribute("PaperNumber",PaperNumber);

        model.addAttribute("PaperNumber2010",PaperNumber2010);

        model.addAttribute("PaperNumber2011",PaperNumber2011);

        model.addAttribute("PaperNumber2012",PaperNumber2012);

        model.addAttribute("PaperNumber2013",PaperNumber2013);

        model.addAttribute("PaperNumber2014",PaperNumber2014);

        model.addAttribute("PaperNumber2015",PaperNumber2015);

        model.addAttribute("PaperNumber2016",PaperNumber2016);


        /**
         * 每个老师的科研进账情况
         * 几年一起
         */
        Map<String,Float> allTeacherSumMoneyData = projectService.getAllYearSumMoneyData();

        System.out.println("==================================================================================");

        System.out.println(allTeacherSumMoneyData);

        model.addAttribute("AllTeacherSumMoneyData", MapHelper.sortMapByValue(allTeacherSumMoneyData));

        /**
         * 单年的
         */
        Map<String,Float> TeacherYearSumMoneyData = projectService.getEveryYearMoneyData(year);

        model.addAttribute("TeacherYearSumMoneyData",MapHelper.sortMapByValue(TeacherYearSumMoneyData));

        return "/WEB-INF/front/projects/work_data_research.jsp";
    }
}
