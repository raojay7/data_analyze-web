package com.data_analyze.teacher.action;

import com.data_analyze.teacher.service.TeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by liujie on 2017/3/17.
 */

@Controller

@RequestMapping("/teacher")
public class TeacherAction {

    @Resource
    private TeacherService teacherService;

    @RequestMapping("/post_data")
    public String postData(Model model) {

        //学院各单位岗位数据对比
        Map<String,Map<String , Integer>> allPostData = teacherService.getAllPostData();

        Map<String,Integer> JSJKXYJSX_POST_DATA = teacherService.queryPostData("计算机科学与技术系");
        Map<String,Integer> DZXXGCX_POST_DATA = teacherService.queryPostData("电子信息工程系");
        Map<String,Integer> DQYZDHX_POST_DATA = teacherService.queryPostData("电气与自动化工程系");
        Map<String,Integer> JSZX_POST_DATA = teacherService.queryPostData("计算中心");
        Map<String,Integer> DGDZSYZX_POST_DATA = teacherService.queryPostData("电工电子实验中心");


        System.out.println(allPostData);

        System.out.println(JSJKXYJSX_POST_DATA+"-"+DZXXGCX_POST_DATA+"-"+DQYZDHX_POST_DATA+"-"+JSZX_POST_DATA+"-"+DGDZSYZX_POST_DATA);

        //不同单位教师岗位数据
        Map<String,Integer> JSGW = allPostData.get("JSGW");

        //不同单位专任教师数据
        Map<String,Integer> QTZYJSGW = allPostData.get("QTZYJSGW");

        //教师岗位数据
        model.addAttribute("JSGW",JSGW);
        model.addAttribute("QTZYJSGW",QTZYJSGW);


        model.addAttribute("JSJKXYJSX_POST_DATA",JSJKXYJSX_POST_DATA);

        model.addAttribute("DZXXGCX_POST_DATA",DZXXGCX_POST_DATA);

        model.addAttribute("DQYZDHX_POST_DATA",DQYZDHX_POST_DATA);

        model.addAttribute("JSZX_POST_DATA",JSZX_POST_DATA);

        model.addAttribute("DGDZSYZX_POST_DATA",DGDZSYZX_POST_DATA);

        return "/WEB-INF/front/teacher/post_data.jsp";
    }

    @RequestMapping("/hr_data")
    public String hrData(Model model) {

        try {

            //拿到数据
            Map<String,Map<String,Integer>> hrProvinceData = teacherService.getAllHrProvinceData();

            Map<String,Integer> singleProvinceDataBS = hrProvinceData.get("BS");

            Map<String,Integer> singleProvinceDataSS = hrProvinceData.get("SS");

            Map<String,Integer> singleProvinceDataXS = hrProvinceData.get("XS");

            model.addAttribute("SingleProvinceDataBS",singleProvinceDataBS);

            model.addAttribute("SingleProvinceDataSS",singleProvinceDataSS);

            model.addAttribute("SingleProvinceDataXS",singleProvinceDataXS);

            Map<String ,String> doctorListHash = teacherService.getAllDoctorName();

            TreeMap<String,String> doctorList = new TreeMap<>(doctorListHash);

            model.addAttribute("DoctorList",doctorList);

            System.out.println(doctorList);

            System.out.println(hrProvinceData);

            System.out.println(singleProvinceDataBS+"-"+singleProvinceDataSS+"-"+singleProvinceDataXS);


        }catch (Exception e){

            e.printStackTrace();
        }
        return "/WEB-INF/front/teacher/hr_data.jsp";
    }
    @RequestMapping("hr_detail_data")
    public String hrDetailData() {
        return "/WEB-INF/front/teacher/hr_detail_data.jsp";
    }


}
