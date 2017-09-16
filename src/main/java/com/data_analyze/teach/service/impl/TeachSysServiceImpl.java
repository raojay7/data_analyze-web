package com.data_analyze.teach.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teach.dao.TeachSysMapper;
import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachSysService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/4/1.
 */

@Service("teachSysService")
public class TeachSysServiceImpl implements TeachSysService{

    @Autowired
    private TeachSysMapper teachSysMapper;

    @Override
    public int insertDynamic(@Param("teach") Teach teach, @Param("tableName") String tableName) {
        return teachSysMapper.insertDynamic(teach,tableName);
    }

    @Override
    public Page<Teach> selectPageListDynamic(@Param("pages")Page<Teach> page, @Param("tableName") String tableName) {

        page.setList(teachSysMapper.selectPageListDynamic(page,tableName));

        int totalRecord = teachSysMapper.selectPageCountDynamic(tableName);

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
        return teachSysMapper.selectPageCountDynamic(tableName);
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teach teach) {
        return teachSysMapper.deleteDynamic(tableName,teach);
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teach teach) {
        return teachSysMapper.updateDynamic(tableName,teach);
    }

    @Override
    public int insert(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teach select(Teach entity) throws Exception
    {
        return null;
    }

    @Override
    public Teach selectDynamic(@Param("tableName") String table, @Param("items") Teach entity) {
        return teachSysMapper.selectDynamic(table,entity);
    }

    @Override
    public Page<Teach> selectPage(Page<Teach> page) {
        return null;
    }

    @Override
    public Page<Teach> selectPageUseDyc(Page<Teach> page) {
        return null;
    }
}
