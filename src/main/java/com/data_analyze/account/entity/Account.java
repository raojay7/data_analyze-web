package com.data_analyze.account.entity;

import java.io.Serializable;

/**
 * Created by liujie on 2017/3/16.
 */
public class Account implements Serializable
{

    private Integer acc_id;

    private String acc_login;

    private String acc_name;

    private String acc_pass;

    public Integer getAcc_id() {
        return acc_id;
    }

    public void setAcc_id(Integer acc_id) {
        this.acc_id = acc_id;
    }

    public String getAcc_login() {
        return acc_login;
    }

    public void setAcc_login(String acc_login) {
        this.acc_login = acc_login;
    }

    public String getAcc_name() {
        return acc_name;
    }

    public void setAcc_name(String acc_name) {
        this.acc_name = acc_name;
    }

    public String getAcc_pass() {
        return acc_pass;
    }

    public void setAcc_pass(String acc_pass) {
        this.acc_pass = acc_pass;
    }

    public Account(Integer acc_id, String acc_login, String acc_name, String acc_pass) {
        this.acc_id = acc_id;
        this.acc_login = acc_login;
        this.acc_name = acc_name;
        this.acc_pass = acc_pass;
    }

    public Account() {
    }

    @Override
    public String toString() {
        return "Account{" +
                "acc_id=" + acc_id +
                ", acc_login='" + acc_login + '\'' +
                ", acc_name='" + acc_name + '\'' +
                ", acc_pass='" + acc_pass + '\'' +
                '}';
    }
}
