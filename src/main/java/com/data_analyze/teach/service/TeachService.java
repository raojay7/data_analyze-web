package com.data_analyze.teach.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.teach.entity.Teach;

import java.io.File;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachService extends BaseService<Teach> {

    void importTeach(File excel, String fileType, int year);

    /**
     *
     * @param year
     *
     * 年份：2010-2016
     * model one
     * @return
     * <String,Float>
     * String
     * (学院人均工作量、计算机科学与技术系人均教学工作量、
     * 电子信息工程系人均教学工作量、电气与自动化系人均教学工作量、
     * 计算中心人均教学工作量、电工电子实验中心人均教学工作量)
     *
     * Float
     * 具体教学工作量的值
     *
     * 注意是平均工作量
     *
     */

    Map<String,Float> getAveTeachData(String year);

    /**
     *
     * @param year
     *
     * 年份：2010-2016
     * model two
     * @return
     * <String,Float>
     * String
     * (学院人均工作量、计算机科学与技术系人均教学工作量、
     * 电子信息工程系人均教学工作量、电气与自动化系人均教学工作量、
     * 计算中心人均教学工作量、电工电子实验中心人均教学工作量)
     *
     * Float
     * 具体教学工作量的值 = (上下半年) 理论 + 指导实验
     *
     * 注意是平均工作量
     *
     */

    Map<String,Float> getAveRealTeachData(String year);




    /**
     *
     * @param year
     *
     * 年份 2010-2016
     * @return
     * <String,Float>
     *  model one
     *  String
     * (计算机科学与技术系总教学工作量、电子信息工程系总教学工作量、
     *  电气与自动化系总教学工作量、计算中心总教学工作量、电工电子实验中心总教学工作量)
     * Float
     * 具体的工作量的数值
     *
     * 注意：是总的教学工作量
     *
     */

    Map<String,Float> getSumTeachData(String year);

    /**
     * model one
     * @param year  传入的年份
     * @param officeName  单位名称 (计算机科学与技术系、
     * 电子信息工程系、电气与自动化系、计算中心、电工电子实验中心)
     *  注意：传入的时候用拼英首字母大写
     *  注意：！！！只要换下接口实现方法名字
     * @return
     * <String,Float>
     *  String：人名
     *  Float：工作量的值
     */

    Map<String,Float> getFirstTenTeachData(String year, String officeName);


    /**
     *全学院最高的10个
     *
     * @param year 年份 2010-2016
     *
     * @return
     *
     * String:教师名
     *
     * Float:工作量的值
     *
     */
    Map<String,Float> getFirstToTenFromAllTeachData(String year);

    /**
     *
     * @param year
     *
     * 年份 2010-2016
     * @return
     * <String,Float>
     *  model two
     *  String
     * (计算机科学与技术系总教学工作量、电子信息工程系总教学工作量、
     *  电气与自动化系总教学工作量、计算中心总教学工作量、电工电子实验中心总教学工作量)
     * Float
     *
     * 具体的工作量的数值第二种算法
     *
     * 注意：是总的教学工作量
     *
     */

    Map<String,Float> getRealSumTeachData(String year);

    /**
     * model two
     * 第二种模型算出来的数据老师的排名
     * @param year  传入的年份
     * @param officeName  单位名称 (计算机科学与技术系、
     * 电子信息工程系、电气与自动化系、计算中心、电工电子实验中心)
     *  注意：传入的时候用拼英首字母大写
     *  注意：！！！只要换下接口实现方法名字
     * @return
     * <String,Float>
     *  String：人名
     *  Float：工作量的值
     */

      Map<String,Float> getNewFirstToTenTeachData(String year, String officeName);

}
