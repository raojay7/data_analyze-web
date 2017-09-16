package com.data_analyze.paper.dao;

import com.data_analyze.core.dao.BaseMapper;
import com.data_analyze.paper.entity.Paper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by liujie on 2017/3/16.
 */
public interface PaperMapper extends BaseMapper<Paper>{

    /**
     * 查询单年的全院论文数
     * 根据levelPattern对论文的level进行匹配
     * @param year
     * @return
     */
    List<Paper> queryAll(@Param("year") String year, @Param("levelPattern") String levelPattern);

    /**
     * 查询单年科室的论文数
     * 根据levelPattern对论文的level进行匹配
     * @param year
     * @param office
     * @return
     */
    List<Paper> queryAllInOffice(@Param("year") String year, @Param("office") String office,
        @Param("levelPattern") String levelPattern);
}
