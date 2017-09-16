package com.data_analyze.account.service;

import com.data_analyze.account.entity.Account;
import com.data_analyze.core.service.BaseService;

/**
 * Created by liujie on 2017/3/16.
 */
public interface AccountService extends BaseService<Account>{

    public int insertAccount(Account account);

    public Account login(Account account);


}
