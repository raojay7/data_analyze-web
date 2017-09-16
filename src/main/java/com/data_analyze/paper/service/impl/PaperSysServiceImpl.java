package com.data_analyze.paper.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.paper.dao.PaperSysMapper;
import com.data_analyze.paper.entity.Paper;
import com.data_analyze.paper.service.PaperSysService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/4/2.
 */

@Service("paperSysService")
public class PaperSysServiceImpl implements PaperSysService {

    @Autowired
    private PaperSysMapper paperSysMapper;

    @Override
    public int insert(Paper entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Paper entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Paper entity) throws Exception
    {
        return 0;
    }

    @Override
    public Paper select(Paper entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Paper> selectPage(Page<Paper> page) {
        return null;
    }

    @Override
    public Page<Paper> selectPageUseDyc(Page<Paper> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("items") Paper entity, @Param("tableName") String tableName) {
        return paperSysMapper.insertDynamic(entity,tableName);
    }

    @Override
    public Page<Paper> selectPageListDynamic(@Param("pages") Page<Paper> page, @Param("tableName") String tableName) {

        page.setList(paperSysMapper.selectPageListDynamic(page,tableName));

        int totalRecord = paperSysMapper.selectPageCountDynamic(tableName);

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
        return paperSysMapper.selectPageCountDynamic(tableName);
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Paper entity) {
        return paperSysMapper.deleteDynamic(tableName,entity);
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Paper entity) {
        return paperSysMapper.updateDynamic(tableName,entity);
    }

    @Override
    public Paper selectDynamic(@Param("tableName") String table, @Param("items") Paper entity) {
        return paperSysMapper.selectDynamic(table,entity);
    }
}
