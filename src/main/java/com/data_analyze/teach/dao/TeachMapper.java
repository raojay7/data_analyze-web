package com.data_analyze.teach.dao;

import com.data_analyze.teach.entity.Teach;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachMapper {
    @Deprecated
    void insert2015(Teach teach);
    @Deprecated
    void insert2016(Teach teach);

    /**
     * 执行sql 返回int 长用来使用count
     * @param sql
     * @return
     */
    int execute(@Param("sql") String sql);

    /**
     * 年度工作总量
     * @param year
     * @return
     */
    float getAllWork(@Param("year") String year);

    /**
     * 全年用第二种算法算出的全员的工作量总量(本科生教学 + 本科生实验 + 研究生教学)
     * @param year
     * @return
     */
    float getAllRealWork(@Param("year") String year);

    /**
     * 某个科室的年度工作总量
     * @param year
     * @param office
     * @return
     */
    float getOfficeWork(@Param("year") String year, @Param("office") String office);

    /**
     * 全年用第二种算法算出的某个科室工作量总量(本科生教学 + 本科生实验 + 研究生教学)
     * @param year
     * @param office
     * @return
     */
    float getOfficeRealWork(@Param("year") String year, @Param("office") String office);

    /**
     * 根据工作量排序，分页查询科室
     * @param year
     * @param office
     * @param beforeBegin
     * @param limit
     * @return
     */
    List<Teach> queryTeachByPageInOffice(@Param("year") String year, @Param("office") String office,
        @Param("beforeBegin") String beforeBegin, @Param("limit") String limit);

    /**
     * 根据工作量排序，分页查询全院
     * @param year
     * @param beforeBegin
     * @param limit
     * @return
     */
    List<Teach> queryTeachByPage(@Param("year") String year, @Param("beforeBegin") String beforeBegin,
        @Param("limit") String limit);

    /**
     * 按第二种算法算出某科室工作量最高的老师
     * @param year
     * @param office
     * @return
     */
    List<Teach> queryRealTeachByPageInOffice(@Param("year") String year, @Param("office") String office,
        @Param("beforeBegin") String beforeBegin, @Param("limit") String limit);
}
