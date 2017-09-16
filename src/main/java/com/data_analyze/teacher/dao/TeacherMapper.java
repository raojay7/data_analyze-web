package com.data_analyze.teacher.dao;

import com.data_analyze.core.dao.BaseMapper;
import com.data_analyze.teacher.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by liujie on 2017/3/17.
 */
public interface TeacherMapper extends BaseMapper<Teacher> {

    /**
     * 根据名字查询salary_id
     * @param name
     * @return
     */
    public String getSalaryIdFromName(String name);

    /**
     * 返回整数 一般用来使用count
     * @param sql
     * @return
     */
    int execute(@Param("sql") String sql);

    /**
     * 根据单一columnName和val查询
     * @param columnName
     * @param val
     * @return
     */
    List<Teacher> queryByOneColumn(@Param("columnName") String columnName, @Param("val") String val);

    /**
     * 根据单一columnName和val进行模糊查询
     * @param columnName
     * @param val
     * @return
     */
    List<Teacher> likeQueryByOneColumn(@Param("columnName") String columnName, @Param("val") String val);

    /**
     * 使用Map封装多个columnName和val 进行多列筛选查询
     * @param columnNameAndVal
     * @return
     */
    List<Teacher> queryByColumns(@Param("columnNameAndVal") Map<String, String> columnNameAndVal);

    /**
     * 使用Map封装多个columnName和val 进行多列筛选模糊查询
     * @param columnNameAndVal
     * @return
     * sql注入漏洞
     */
    List<Teacher> likeQueryByColumns(@Param("columnNameAndVal") Map<String, String> columnNameAndVal);

    /**
     * 返回数据库中的所有老师
     * @return
     */
    List<Teacher> getAll();
}
