package com.data_analyze.account.service.impl;

import com.data_analyze.account.dao.AccountMapper;
import com.data_analyze.account.entity.Account;
import com.data_analyze.account.service.AccountService;
import com.data_analyze.core.entity.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liujie on 2017/3/16.
 */

@Service("accountService")
public class AccountServiceImpl implements AccountService{


    @Autowired
    private AccountMapper accountMapper;

    @Override
    public int insertAccount(Account account) {
        return accountMapper.insert(account);
    }

    @Override
    public int insert(Account entity) throws Exception
    {
        return accountMapper.insert(entity);
    }

    @Override
    public Account login(Account account) {
        return accountMapper.login(account);
    }

    @Override
    public int update(Account entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Account entity) throws Exception
    {
        return 0;
    }

    @Override
    public Account select(Account entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Account> selectPage(Page<Account> page) {
        return null;
    }

    @Override
    public Page<Account> selectPageUseDyc(Page<Account> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Account entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Account> selectPageListDynamic(@Param("pages") Page<Account> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Account entity) {
        return 0;
    }

    @Override
    public Account selectDynamic(@Param("tableName") String table, @Param("items") Account entity) {
        return null;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Account entity) {
        return 0;
    }
}
