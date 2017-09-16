package com.data_analyze.publication.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by liujie on 2017/3/17.
 */
public class Publication implements Serializable
{
    private Integer _id ;
    private String salary_id ;
    private Timestamp year ;
    private String author;
    private String university;
    private String title ;
    private String journal_name ;
    private String type  ;
    private Float num_of_wd_cpd;
    private Float num_of_wd_all;
    private String level;
    private Float workload;

    public Publication() {
    }

    public Publication(Integer _id, String salary_id, Timestamp year, String author, String university, String title, String journal_name, String type, Float num_of_wd_cpd, Float num_of_wd_all, String level, Float workload) {
        this._id = _id;
        this.salary_id = salary_id;
        this.year = year;
        this.author = author;
        this.university = university;
        this.title = title;
        this.journal_name = journal_name;
        this.type = type;
        this.num_of_wd_cpd = num_of_wd_cpd;
        this.num_of_wd_all = num_of_wd_all;
        this.level = level;
        this.workload = workload;
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

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getJournal_name() {
        return journal_name;
    }

    public void setJournal_name(String journal_name) {
        this.journal_name = journal_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Float getNum_of_wd_cpd() {
        return num_of_wd_cpd;
    }

    public void setNum_of_wd_cpd(Float num_of_wd_cpd) {
        this.num_of_wd_cpd = num_of_wd_cpd;
    }

    public Float getNum_of_wd_all() {
        return num_of_wd_all;
    }

    public void setNum_of_wd_all(Float num_of_wd_all) {
        this.num_of_wd_all = num_of_wd_all;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public Float getWorkload() {
        return workload;
    }

    public void setWorkload(Float workload) {
        this.workload = workload;
    }

    @Override
    public String toString() {
        return "Publication{" +
                "_id=" + _id +
                ", salary_id='" + salary_id + '\'' +
                ", year=" + year +
                ", author='" + author + '\'' +
                ", university='" + university + '\'' +
                ", title='" + title + '\'' +
                ", journal_name='" + journal_name + '\'' +
                ", type='" + type + '\'' +
                ", num_of_wd_cpd=" + num_of_wd_cpd +
                ", num_of_wd_all=" + num_of_wd_all +
                ", level='" + level + '\'' +
                ", workload=" + workload +
                '}';
    }
}
