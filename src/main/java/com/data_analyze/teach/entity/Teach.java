package com.data_analyze.teach.entity;

import java.io.Serializable;

/**
 * Created by liujie on 2017/3/17.
 */
public class Teach implements Serializable
{
    private Integer _id ;
    private String salary_id ;
    private String name ;
    private String rank;
    private String duty ;
    private Float theory_fs;
    private Float profession_fs;
    private Float ready_fs;
    private Float guide_fs;
    private Float graduation_fs;
    private Float first_sum ;
    private Float theory_ss;
    private Float profession_ss;
    private Float ready_ss;
    private Float guide_ss ;
    private Float graduation_ss ;
    private Float second_sum ;
    private String remark_job ;
    private Float year_sum ;
    private Float second_etc ;
    private Float innovative_course;
    private Float college_workload ;

    public Teach() {
    }

    public Teach(Integer _id, String salary_id, String name, String rank, String duty, Float theory_fs, Float profession_fs, Float ready_fs, Float guide_fs, Float graduation_fs, Float first_sum, Float theory_ss, Float profession_ss, Float ready_ss, Float guide_ss, Float graduation_ss, Float second_sum, String remark_job, Float year_sum, Float second_etc, Float innovative_course, Float college_workload) {
        this._id = _id;
        this.salary_id = salary_id;
        this.name = name;
        this.rank = rank;
        this.duty = duty;
        this.theory_fs = theory_fs;
        this.profession_fs = profession_fs;
        this.ready_fs = ready_fs;
        this.guide_fs = guide_fs;
        this.graduation_fs = graduation_fs;
        this.first_sum = first_sum;
        this.theory_ss = theory_ss;
        this.profession_ss = profession_ss;
        this.ready_ss = ready_ss;
        this.guide_ss = guide_ss;
        this.graduation_ss = graduation_ss;
        this.second_sum = second_sum;
        this.remark_job = remark_job;
        this.year_sum = year_sum;
        this.second_etc = second_etc;
        this.innovative_course = innovative_course;
        this.college_workload = college_workload;
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

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Float getTheory_fs() {
        return theory_fs;
    }

    public void setTheory_fs(Float theory_fs) {
        this.theory_fs = theory_fs;
    }

    public Float getProfession_fs() {
        return profession_fs;
    }

    public void setProfession_fs(Float profession_fs) {
        this.profession_fs = profession_fs;
    }

    public Float getReady_fs() {
        return ready_fs;
    }

    public void setReady_fs(Float ready_fs) {
        this.ready_fs = ready_fs;
    }

    public Float getGuide_fs() {
        return guide_fs;
    }

    public void setGuide_fs(Float guide_fs) {
        this.guide_fs = guide_fs;
    }

    public Float getGraduation_fs() {
        return graduation_fs;
    }

    public void setGraduation_fs(Float graduation_fs) {
        this.graduation_fs = graduation_fs;
    }

    public Float getFirst_sum() {
        return first_sum;
    }

    public void setFirst_sum(Float first_sum) {
        this.first_sum = first_sum;
    }

    public Float getTheory_ss() {
        return theory_ss;
    }

    public void setTheory_ss(Float theory_ss) {
        this.theory_ss = theory_ss;
    }

    public Float getProfession_ss() {
        return profession_ss;
    }

    public void setProfession_ss(Float profession_ss) {
        this.profession_ss = profession_ss;
    }

    public Float getReady_ss() {
        return ready_ss;
    }

    public void setReady_ss(Float ready_ss) {
        this.ready_ss = ready_ss;
    }

    public Float getGuide_ss() {
        return guide_ss;
    }

    public void setGuide_ss(Float guide_ss) {
        this.guide_ss = guide_ss;
    }

    public Float getGraduation_ss() {
        return graduation_ss;
    }

    public void setGraduation_ss(Float graduation_ss) {
        this.graduation_ss = graduation_ss;
    }

    public Float getSecond_sum() {
        return second_sum;
    }

    public void setSecond_sum(Float second_sum) {
        this.second_sum = second_sum;
    }

    public String getRemark_job() {
        return remark_job;
    }

    public void setRemark_job(String remark_job) {
        this.remark_job = remark_job;
    }

    public Float getYear_sum() {
        return year_sum;
    }

    public void setYear_sum(Float year_sum) {
        this.year_sum = year_sum;
    }

    public Float getSecond_etc() {
        return second_etc;
    }

    public void setSecond_etc(Float second_etc) {
        this.second_etc = second_etc;
    }

    public Float getInnovative_course() {
        return innovative_course;
    }

    public void setInnovative_course(Float innovative_course) {
        this.innovative_course = innovative_course;
    }

    public Float getCollege_workload() {
        return college_workload;
    }

    public void setCollege_workload(Float college_workload) {
        this.college_workload = college_workload;
    }

    @Override
    public String toString() {
        return "Teach{" +
                "_id=" + _id +
                ", salary_id='" + salary_id + '\'' +
                ", name='" + name + '\'' +
                ", rank='" + rank + '\'' +
                ", duty='" + duty + '\'' +
                ", theory_fs=" + theory_fs +
                ", profession_fs=" + profession_fs +
                ", ready_fs=" + ready_fs +
                ", guide_fs=" + guide_fs +
                ", graduation_fs=" + graduation_fs +
                ", first_sum=" + first_sum +
                ", theory_ss=" + theory_ss +
                ", profession_ss=" + profession_ss +
                ", ready_ss=" + ready_ss +
                ", guide_ss=" + guide_ss +
                ", graduation_ss=" + graduation_ss +
                ", second_sum=" + second_sum +
                ", remark_job='" + remark_job + '\'' +
                ", year_sum=" + year_sum +
                ", second_etc=" + second_etc +
                ", innovative_course=" + innovative_course +
                ", college_workload=" + college_workload +
                '}';
    }
}
