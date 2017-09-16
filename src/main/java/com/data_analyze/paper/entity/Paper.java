package com.data_analyze.paper.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by liujie on 2017/3/17.
 */
public class Paper implements Serializable
{

    private Integer _id;
    private String salary_id;
    private String ids_num;
    private Timestamp year;
    private String author;
    private String level;
    private String title;

    public Paper() {
    }

    public Paper(Integer _id, String salary_id, String ids_num, Timestamp year, String author, String level, String title) {
        this._id = _id;
        this.salary_id = salary_id;
        this.ids_num = ids_num;
        this.year = year;
        this.author = author;
        this.level = level;
        this.title = title;
    }

    public Integer get_id() {
        return _id;
    }

    public void set_id(Integer _id) {
        this._id = _id;
    }

    public String getSalary_id() {
        return salary_id;
    }

    public void setSalary_id(String salary_id) {
        this.salary_id = salary_id;
    }

    public String getIds_num() {
        return ids_num;
    }

    public void setIds_num(String ids_num) {
        this.ids_num = ids_num;
    }

    public Timestamp getYear() {
        return year;
    }

    public void setYear(Timestamp year) {
        this.year = year;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "_id=" + _id +
                ", salary_id='" + salary_id + '\'' +
                ", ids_num='" + ids_num + '\'' +
                ", year=" + year +
                ", author='" + author + '\'' +
                ", level='" + level + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
