package com.data_analyze.account.dao;

import com.data_analyze.account.entity.Account;
import com.data_analyze.core.dao.BaseMapper;

/**
 * Created by liujie on 2017/3/16.
 */
public interface AccountMapper extends BaseMapper<Account> {

    public Account login(Account account);

}
