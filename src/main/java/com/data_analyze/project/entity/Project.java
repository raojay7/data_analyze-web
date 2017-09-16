package com.data_analyze.project.entity;

import java.io.Serializable;

/**
 * Created by liujie on 2017/3/17.
 */
public class Project implements Serializable
{
    private Integer _id ;
    private String salary_id ;
    private String name ;
    private Boolean type ;
    private Float budget_in_acc ;

    public Project(Integer _id, String salary_id, String name, Boolean type, Float budget_in_acc) {
        this._id = _id;
        this.salary_id = salary_id;
        this.name = name;
        this.type = type;
        this.budget_in_acc = budget_in_acc;
    }

    public Project() {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getType() {
        return type;
    }

    public void setType(Boolean type) {
        this.type = type;
    }

    public Float getBudget_in_acc() {
        return budget_in_acc;
    }

    public void setBudget_in_acc(Float budget_in_acc) {
        this.budget_in_acc = budget_in_acc;
    }

    @Override
    public String toString() {
        return "Project{" +
                "_id=" + _id +
                ", salary_id='" + salary_id + '\'' +
                ", name='" + name + '\'' +
                ", type=" + type +
                ", budget_in_acc=" + budget_in_acc +
                '}';
    }
}
