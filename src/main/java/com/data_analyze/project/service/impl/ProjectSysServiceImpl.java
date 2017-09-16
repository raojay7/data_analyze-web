package com.data_analyze.project.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.project.dao.ProjectSysMapper;
import com.data_analyze.project.entity.Project;
import com.data_analyze.project.service.ProjectSysService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/4/2.
 */

@Service("projectSysService")
public class ProjectSysServiceImpl implements ProjectSysService {

    @Autowired
    private ProjectSysMapper projectSysMapper;

    @Override
    public int insert(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    public Project select(Project entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Project> selectPage(Page<Project> page) {
        return null;
    }

    @Override
    public Page<Project> selectPageUseDyc(Page<Project> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("items") Project entity, @Param("tableName") String tableName) {
        return projectSysMapper.insertDynamic(entity,tableName);
    }

    @Override
    public Page<Project> selectPageListDynamic(@Param("pages") Page<Project> page, @Param("tableName") String tableName) {

        page.setList(projectSysMapper.selectPageListDynamic(page,tableName));

        int totalRecord = projectSysMapper.selectPageCountDynamic(tableName);

        page.setTotalRecord(totalRecord);

        if (totalRecord%page.getRows()==0){
            page.setTotalPage(totalRecord/page.getRows());
        }else {
            page.setTotalPage(totalRecord/page.getRows()+1);
        }
        return page;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return projectSysMapper.selectPageCountDynamic(tableName);
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Project entity) {
        return projectSysMapper.deleteDynamic(tableName,entity);
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Project entity) {
        return projectSysMapper.updateDynamic(tableName,entity);
    }

    @Override
    public Project selectDynamic(@Param("tableName") String table, @Param("items") Project entity) {
        return projectSysMapper.selectDynamic(table,entity);
    }
}
