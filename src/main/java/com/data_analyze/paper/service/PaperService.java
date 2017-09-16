package com.data_analyze.paper.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.paper.entity.Paper;

import java.io.File;
import java.util.Map;

/**
 * Created by liujie on 2017/3/17.
 */
public interface PaperService extends BaseService<Paper> {

    public void importPaper(File excel, String fileType, int year);

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
    Map<String,Integer> getPaperNumber(String year);


}
