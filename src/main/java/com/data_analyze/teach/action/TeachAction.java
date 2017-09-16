package com.data_analyze.teach.action;

import com.data_analyze.teach.service.TeachService;
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
@RequestMapping("/teach")
public class TeachAction {
    @Resource
    private TeachService teachService;

    static private int count = 1;

    @RequestMapping("/insert")
    public String insert(){
        System.out.println("inserting");
        if(count == 1){
            count++;
            File teachTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2015_teachs_table.xlsx");
            teachService.importTeach(teachTable, ".xlsx", 2015);
            System.out.println("imported teach2015");

            teachTable = new File("/home/jiacheng/IdeaProjects/data_analyze/conf/2016_teachs_table.xlsx");
            teachService.importTeach(teachTable, ".xlsx", 2016);
            System.out.println("imported teach2016");
        }
        return "forward:/main.jsp";
    }

    @RequestMapping("/getAveTeachData")
    public String getAveTeachData(){



        return "forward:/teach/work_data_teach.do";
    }


    @RequestMapping("work_data_teach")
    public String workDataTeach(Model model , HttpServletRequest request) {

        String year = request.getParameter("YEAR");

        if (year == null || year.equals("")){
            year = "2010";
        }

        model.addAttribute("YEAR",year);

        /**
         * 模型一算的人均
         */

        Map<String,Float> aveTeachData = teachService.getAveTeachData(year);
        model.addAttribute("aveTeachData",aveTeachData);
        Map<String,Float> TeachData2010 = teachService.getAveTeachData("2010");
        Map<String,Float> TeachData2011 = teachService.getAveTeachData("2011");
        Map<String,Float> TeachData2012 = teachService.getAveTeachData("2012");
        Map<String,Float> TeachData2013 = teachService.getAveTeachData("2013");
        Map<String,Float> TeachData2014 = teachService.getAveTeachData("2014");
        Map<String,Float> TeachData2015 = teachService.getAveTeachData("2015");
        Map<String,Float> TeachData2016 = teachService.getAveTeachData("2016");
        model.addAttribute("TeachData2010",TeachData2010);
        model.addAttribute("TeachData2011",TeachData2011);
        model.addAttribute("TeachData2012",TeachData2012);
        model.addAttribute("TeachData2013",TeachData2013);
        model.addAttribute("TeachData2014",TeachData2014);
        model.addAttribute("TeachData2015",TeachData2015);
        model.addAttribute("TeachData2016",TeachData2016);
        model.addAttribute("TeachData2010",TeachData2010);
        model.addAttribute("AveTeachData",aveTeachData);


        /**
         * 模型一算的总的
         */

        Map<String,Float> SumTeachData = teachService.getSumTeachData(year);
        model.addAttribute("SumTeachData",SumTeachData);
        Map<String,Float> SumTeachData2010 = teachService.getSumTeachData("2010");
        Map<String,Float> SumTeachData2011 = teachService.getSumTeachData("2011");
        Map<String,Float> SumTeachData2012 = teachService.getSumTeachData("2012");
        Map<String,Float> SumTeachData2013 = teachService.getSumTeachData("2013");
        Map<String,Float> SumTeachData2014 = teachService.getSumTeachData("2014");
        Map<String,Float> SumTeachData2015 = teachService.getSumTeachData("2015");
        Map<String,Float> SumTeachData2016 = teachService.getSumTeachData("2016");
        model.addAttribute("SumTeachData2010",SumTeachData2010);
        model.addAttribute("SumTeachData2011",SumTeachData2011);
        model.addAttribute("SumTeachData2012",SumTeachData2012);
        model.addAttribute("SumTeachData2013",SumTeachData2013);
        model.addAttribute("SumTeachData2014",SumTeachData2014);
        model.addAttribute("SumTeachData2015",SumTeachData2015);
        model.addAttribute("SumTeachData2016",SumTeachData2016);


        /**
         * 模型一算的排名前十
         */

        Map<String,Float> JSJKXYJS_FirstToFiveTeachData = teachService.getFirstTenTeachData(year,"计算机科学与技术系");
        Map<String,Float> DQYZDHGCX_FirstToFiveTeachData = teachService.getFirstTenTeachData(year,"电气与自动化工程系");
        Map<String,Float> DZXXGCX_FirstToFiveTeachData = teachService.getFirstTenTeachData(year,"电子信息工程系");
        Map<String,Float> JSZX_FirstToFiveTeachData = teachService.getFirstTenTeachData(year,"计算中心");
        Map<String,Float> DGDZSYZX_FirstToFiveTeachData = teachService.getFirstTenTeachData(year,"电工电子实验中心");
        model.addAttribute("JSJKXYJS_FirstToFiveTeachData", MapHelper.sortMapByValue(JSJKXYJS_FirstToFiveTeachData));
        model.addAttribute("DQYZDHGCX_FirstToFiveTeachData",MapHelper.sortMapByValue(DQYZDHGCX_FirstToFiveTeachData));
        model.addAttribute("DZXXGCX_FirstToFiveTeachData",MapHelper.sortMapByValue(DZXXGCX_FirstToFiveTeachData));
        model.addAttribute("JSZX_FirstToFiveTeachData",MapHelper.sortMapByValue(JSZX_FirstToFiveTeachData));
        model.addAttribute("DGDZSYZX_FirstToFiveTeachData",MapHelper.sortMapByValue(DGDZSYZX_FirstToFiveTeachData));


        /*==================================================================================================*/

         /* 上面模型一 , 下面模型二 */

         /*==================================================================================================== */

        /**
         * 模型二的教学工作量平均值
         *
         */
        Map<String,Float> aveRealTeachData = teachService.getAveRealTeachData(year);
        model.addAttribute("RealAveTeachData",aveRealTeachData);
        Map<String,Float> RealTeachData2010 = teachService.getAveRealTeachData("2010");
        Map<String,Float> RealTeachData2011 = teachService.getAveRealTeachData("2011");
        Map<String,Float> RealTeachData2012 = teachService.getAveRealTeachData("2012");
        Map<String,Float> RealTeachData2013 = teachService.getAveRealTeachData("2013");
        Map<String,Float> RealTeachData2014 = teachService.getAveRealTeachData("2014");
        Map<String,Float> RealTeachData2015 = teachService.getAveRealTeachData("2015");
        Map<String,Float> RealTeachData2016 = teachService.getAveRealTeachData("2016");
        model.addAttribute("RealTeachData2010",RealTeachData2010);
        model.addAttribute("RealTeachData2011",RealTeachData2011);
        model.addAttribute("RealTeachData2012",RealTeachData2012);
        model.addAttribute("RealTeachData2013",RealTeachData2013);
        model.addAttribute("RealTeachData2014",RealTeachData2014);
        model.addAttribute("RealTeachData2015",RealTeachData2015);
        model.addAttribute("RealTeachData2016",RealTeachData2016);
        model.addAttribute("RealTeachData2010",RealTeachData2010);

        /**
         * 模型二算的总的
         */
        Map<String,Float> SumTeachDataNew = teachService.getRealSumTeachData(year);
        model.addAttribute("SumTeachDataNew",SumTeachDataNew);
        Map<String,Float> SumTeachDataNew2010 = teachService.getRealSumTeachData("2010");
        Map<String,Float> SumTeachDataNew2011 = teachService.getRealSumTeachData("2011");
        Map<String,Float> SumTeachDataNew2012 = teachService.getRealSumTeachData("2012");
        Map<String,Float> SumTeachDataNew2013 = teachService.getRealSumTeachData("2013");
        Map<String,Float> SumTeachDataNew2014 = teachService.getRealSumTeachData("2014");
        Map<String,Float> SumTeachDataNew2015 = teachService.getRealSumTeachData("2015");
        Map<String,Float> SumTeachDataNew2016 = teachService.getRealSumTeachData("2016");

        model.addAttribute("SumTeachDataNew2010",SumTeachDataNew2010);
        model.addAttribute("SumTeachDataNew2011",SumTeachDataNew2011);
        model.addAttribute("SumTeachDataNew2012",SumTeachDataNew2012);
        model.addAttribute("SumTeachDataNew2013",SumTeachDataNew2013);
        model.addAttribute("SumTeachDataNew2014",SumTeachDataNew2014);
        model.addAttribute("SumTeachDataNew2015",SumTeachDataNew2015);
        model.addAttribute("SumTeachDataNew2016",SumTeachDataNew2016);

        /**
         * 模型二算的排名前十
         */
        Map<String,Float> JSJKXYJS_FirstToFiveTeachDataNew = teachService.getNewFirstToTenTeachData(year,"计算机科学与技术系");
        Map<String,Float> DQYZDHGCX_FirstToFiveTeachDataNew = teachService.getNewFirstToTenTeachData(year,"电气与自动化工程系");
        Map<String,Float> DZXXGCX_FirstToFiveTeachDataNew = teachService.getNewFirstToTenTeachData(year,"电子信息工程系");
        Map<String,Float> JSZX_FirstToFiveTeachDataNew = teachService.getNewFirstToTenTeachData(year,"计算中心");
        Map<String,Float> DGDZSYZX_FirstToFiveTeachDataNew = teachService.getNewFirstToTenTeachData(year,"电工电子实验中心");
        model.addAttribute("JSJKXYJS_FirstToFiveTeachDataNew", MapHelper.sortMapByValue(JSJKXYJS_FirstToFiveTeachDataNew));
        model.addAttribute("DQYZDHGCX_FirstToFiveTeachDataNew",MapHelper.sortMapByValue(DQYZDHGCX_FirstToFiveTeachDataNew));
        model.addAttribute("DZXXGCX_FirstToFiveTeachDataNew",MapHelper.sortMapByValue(DZXXGCX_FirstToFiveTeachDataNew));
        model.addAttribute("JSZX_FirstToFiveTeachDataNew",MapHelper.sortMapByValue(JSZX_FirstToFiveTeachDataNew));
        model.addAttribute("DGDZSYZX_FirstToFiveTeachDataNew",MapHelper.sortMapByValue(DGDZSYZX_FirstToFiveTeachDataNew));


        return "/WEB-INF/front/teach/work_data_teach.jsp";
    }
}
