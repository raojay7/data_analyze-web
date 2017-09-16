package com.data_analyze.teacher.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.dao.TeacherSysMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherSysService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/4/1.
 */

@Service("teacherSysService")

public class TeacherSysServiceImpl implements TeacherSysService{



    @Autowired
    private TeacherSysMapper teacherSysMapper;

    @Override
    public int insert(Teacher entity) throws Exception
    {
        return teacherSysMapper.insert(entity);
    }

    @Override
    public int update(Teacher entity) throws Exception
    {
        return teacherSysMapper.update(entity);
    }

    @Override
    public int delete(Teacher entity) throws Exception
    {
        return teacherSysMapper.delete(entity);
    }

    @Override
    public Teacher select(Teacher entity) throws Exception
    {
        return teacherSysMapper.select(entity);
    }


    @Override
    public Page<Teacher> selectPage(Page<Teacher> page) {

        //baseMapper中查到的数据在这里填入page

        page.setList(teacherSysMapper.selectPageList(page));

        int totalRecord = teacherSysMapper.selectPageCount(page);

        page.setTotalRecord(totalRecord);

        if (totalRecord%page.getRows()==0){
            page.setTotalPage(totalRecord/page.getRows());
        }else {
            page.setTotalPage(totalRecord/page.getRows()+1);
        }

        return page;
    }

    @Override
    public Page<Teacher> selectPageUseDyc(Page<Teacher> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Teacher entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teacher> selectPageListDynamic(@Param("pages") Page<Teacher> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }

    @Override
    public Teacher selectDynamic(@Param("tableName") String table, @Param("items") Teacher entity) {
        return null;
    }
}
