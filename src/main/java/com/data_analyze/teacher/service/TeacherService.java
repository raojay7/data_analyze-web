package com.data_analyze.teacher.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.teacher.entity.Teacher;

import java.io.File;
import java.util.Map;

/**
 * Created by liujie on 2017/3/16.
 */
public interface TeacherService extends BaseService<Teacher>{

    public int insertTeacher(Teacher teacher);


    public void importTeacherTable(File excel, String fileType);


    public void importTeacher(File excel, String fileType);

    public String getSalaryIdFromName(String name);


    public void hello();


    /**
     *
     * @param office
     * office是不同单位名
     * (计算机科学与技术系，电子信息工程系，电气与自动化工程系，计算中心，电工电子实验中心)
     * @return
     *
     * Map<String,Integer>
     * String (基础教学，教学与科研并重，科研型，社会服务型)
     * Integer 不同类型岗位的老师的人数
     */


    Map<String, Integer> queryPostData(String officeName);

    /**
     *
     *   @return
     *    String 是专任教师职称名字   教授   副教授   讲师
     *    Integer 他们分别的数量无参数传入
     *
     */

    Map<String,Integer> getJobLeveData();


    /**
     *
     * @return
     *  这里面的String表示（教师岗位、其它专技）
     *
     *  Map<String , Integer>
     *
     *  Sting 是不同单位对应的名字（计算机系、电子系、自动化系、计算中心）
     *
     *  Integer是他们对应的数量
     *
     */

    Map<String,Map<String,Integer>> getAllPostData();

    /**
     * @return
     *
     *用拼英首字母
     *
     * String : 教师类型(博士，硕士，学士)
     *
     * Map<String , Integer>
     *
     * String省份名 ： 参见地图上的省份名
     *
     * Integer:人数
     *
     */
     Map<String,Map<String,Integer>> getAllHrProvinceData();

    /**
     *
     * @return
     *
     * 第一个String : 博士名
     *
     * 第二个String : 省份名
     *
     */

     Map<String,String> getAllDoctorName();

}
