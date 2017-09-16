package com.data_analyze.teachsum.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teachsum.dao.TeachsumSysMapper;
import com.data_analyze.teachsum.entity.Teachsum;
import com.data_analyze.teachsum.service.TeachsumSysService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/4/2.
 */

@Service("teachsumSysService")
public class TeachsumSysServiceImpl implements TeachsumSysService {

    @Autowired
    private TeachsumSysMapper teachsumSysMapper;

    @Override
    public int insert(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teachsum select(Teachsum entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Teachsum> selectPage(Page<Teachsum> page) {
        return null;
    }

    @Override
    public Page<Teachsum> selectPageUseDyc(Page<Teachsum> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("items") Teachsum entity, @Param("tableName") String tableName) {
        return teachsumSysMapper.insertDynamic(entity,tableName);
    }

    @Override
    public Page<Teachsum> selectPageListDynamic(@Param("pages") Page<Teachsum> page, @Param("tableName") String tableName) {
        page.setList(teachsumSysMapper.selectPageListDynamic(page,tableName));

        int totalRecord = teachsumSysMapper.selectPageCountDynamic(tableName);

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
        return teachsumSysMapper.selectPageCountDynamic(tableName);
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teachsum entity) {
        return teachsumSysMapper.deleteDynamic(tableName,entity);
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teachsum entity) {
        return teachsumSysMapper.updateDynamic(tableName,entity);
    }

    @Override
    public Teachsum selectDynamic(@Param("tableName") String table, @Param("items") Teachsum entity) {
        return teachsumSysMapper.selectDynamic(table,entity);
    }

}
