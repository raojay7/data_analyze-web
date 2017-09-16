package com.data_analyze.project.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.project.entity.Project;

import java.io.File;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface ProjectService extends BaseService<Project> {

    void importProject(File excel, String fileType, int year);

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
    Map<String,Float> getAveProjectMoneyData(String year);


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

    Map<String,Float> getSumProjectMoneyData(String year);

    /**
     *全学院最高的5个
     *
     * @param year 年份 2010-2016
     *
     * @return
     *
     * String:教师名
     *
     * Float:项目经费值
     *
     * 这个方法可保留先不要实现
     *
     */
    Map<String,Float> getFirstTenFromAllMoneyData(String year);

    /**
     *
     * @param year 年份
     * @return
     * String 老师名
     *
     * Float 进账的金额
     *
     */

    Map<String,Float> getEveryYearMoneyData(String year);

    /**
     *
     * @return
     *
     * String：老师名
     * Float：进账金额
     *
     */
    Map<String,Float> getAllYearSumMoneyData();

}
