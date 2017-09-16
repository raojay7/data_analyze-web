package com.data_analyze.project.dao;

import com.data_analyze.project.entity.Project;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface ProjectMapper {
    @Deprecated
    void insert2015(Project project);
    @Deprecated
    void insert2016(Project project);

    /**
     * 全院一年项目经费
     * @param year
     * @return
     */
    Float getAllBudget(@Param("year") String year);

    /**
     * 某个科室一年的项目经费
     * @param year
     * @param office
     * @return
     */
    Float getBudgetInOffice(@Param("year") String year, @Param("office") String office);

    /**
     * 得到每个人获取
     */
    List<Project> getPeopleAndBudget(@Param("year") String year);

}
