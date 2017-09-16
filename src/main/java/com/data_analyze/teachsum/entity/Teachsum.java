package com.data_analyze.teachsum.entity;

import java.io.Serializable;

/**
 * Created by liujie on 2017/3/17.
 */
public class Teachsum implements Serializable
{
    private Integer _id ;
    private String department;
    private String salary_id ;
    private String name ;
    private Integer year ;  // 注意 不是Timestamp
    private Float teach_workload ;
    private Float mentor_load ;
    private Float reform_workload;
    private Float sum_workload ;

    public Teachsum() {
    }

    public Teachsum(Integer _id, String department, String salary_id, String name, Integer year, Float teach_workload, Float mentor_load, Float reform_workload, Float sum_workload) {
        this._id = _id;
        this.department = department;
        this.salary_id = salary_id;
        this.name = name;
        this.year = year;
        this.teach_workload = teach_workload;
        this.mentor_load = mentor_load;
        this.reform_workload = reform_workload;
        this.sum_workload = sum_workload;
    }

    public Integer get_id() {
        return _id;
    }

    public void set_id(Integer _id) {
        this._id = _id;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSalary_id() {
        return salary_id;
    }

    public void setSalary_id(String salary_id) {
        this.salary_id = salary_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Float getTeach_workload() {
        return teach_workload;
    }

    public void setTeach_workload(Float teach_workload) {
        this.teach_workload = teach_workload;
    }

    public Float getMentor_load() {
        return mentor_load;
    }

    public void setMentor_load(Float mentor_load) {
        this.mentor_load = mentor_load;
    }

    public Float getReform_workload() {
        return reform_workload;
    }

    public void setReform_workload(Float reform_workload) {
        this.reform_workload = reform_workload;
    }

    public Float getSum_workload() {
        return sum_workload;
    }

    public void setSum_workload(Float sum_workload) {
        this.sum_workload = sum_workload;
    }

    @Override
    public String toString() {
        return "Teachsum{" +
                "_id=" + _id +
                ", department='" + department + '\'' +
                ", salary_id='" + salary_id + '\'' +
                ", name='" + name + '\'' +
                ", year=" + year +
                ", teach_workload=" + teach_workload +
                ", mentor_load=" + mentor_load +
                ", reform_workload=" + reform_workload +
                ", sum_workload=" + sum_workload +
                '}';
    }
}
