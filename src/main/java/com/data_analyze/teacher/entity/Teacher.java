package com.data_analyze.teacher.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by liujie on 2017/3/17.
 */
public class Teacher implements Serializable
{

    private String salary_id;

    private String name;

    private Boolean gender;

    private String office;

    private Timestamp birthday;

    private String race;

    private String identity;

    private String hometown;

    private String politics_status;

    private Timestamp join_time;

    private Timestamp join_school_time;

    private Timestamp join_job_time;

    private String job;

    private String job_status;

    private Boolean authorized;

    private String on_status;

    private String department;

    private String join_reason;

    private String attendance_category;

    private String job_level;

    private String administrative_post;

    private String prof_and_tech_post;

    private String special_experience;

    private String last_edu_background;

    private String degree;

    private Timestamp degree_time;

    private String last_degree;

    private String subject;

    private String remark;

    private String mentor_type;

    private String major;

    private String post_type;

    private String graduate_province;

    public Teacher() {
    }

    public Teacher(String salary_id, String name, Boolean gender, String office, Timestamp birthday, String race, String identity, String hometown, String politics_status, Timestamp join_time, Timestamp join_school_time, Timestamp join_job_time, String job, String job_status, Boolean authorized, String on_status, String department, String join_reason, String attendance_category, String job_level, String administrative_post, String prof_and_tech_post, String special_experience, String last_edu_background, String degree, Timestamp degree_time, String last_degree, String subject, String remark, String mentor_type, String major, String post_type, String graduate_province) {
        this.salary_id = salary_id;
        this.name = name;
        this.gender = gender;
        this.office = office;
        this.birthday = birthday;
        this.race = race;
        this.identity = identity;
        this.hometown = hometown;
        this.politics_status = politics_status;
        this.join_time = join_time;
        this.join_school_time = join_school_time;
        this.join_job_time = join_job_time;
        this.job = job;
        this.job_status = job_status;
        this.authorized = authorized;
        this.on_status = on_status;
        this.department = department;
        this.join_reason = join_reason;
        this.attendance_category = attendance_category;
        this.job_level = job_level;
        this.administrative_post = administrative_post;
        this.prof_and_tech_post = prof_and_tech_post;
        this.special_experience = special_experience;
        this.last_edu_background = last_edu_background;
        this.degree = degree;
        this.degree_time = degree_time;
        this.last_degree = last_degree;
        this.subject = subject;
        this.remark = remark;
        this.mentor_type = mentor_type;
        this.major = major;
        this.post_type = post_type;
        this.graduate_province = graduate_province;
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

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public Timestamp getBirthday() {
        return birthday;
    }

    public void setBirthday(Timestamp birthday) {
        this.birthday = birthday;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getPolitics_status() {
        return politics_status;
    }

    public void setPolitics_status(String politics_status) {
        this.politics_status = politics_status;
    }

    public Timestamp getJoin_time() {
        return join_time;
    }

    public void setJoin_time(Timestamp join_time) {
        this.join_time = join_time;
    }

    public Timestamp getJoin_school_time() {
        return join_school_time;
    }

    public void setJoin_school_time(Timestamp join_school_time) {
        this.join_school_time = join_school_time;
    }

    public Timestamp getJoin_job_time() {
        return join_job_time;
    }

    public void setJoin_job_time(Timestamp join_job_time) {
        this.join_job_time = join_job_time;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getJob_status() {
        return job_status;
    }

    public void setJob_status(String job_status) {
        this.job_status = job_status;
    }

    public Boolean getAuthorized() {
        return authorized;
    }

    public void setAuthorized(Boolean authorized) {
        this.authorized = authorized;
    }

    public String getOn_status() {
        return on_status;
    }

    public void setOn_status(String on_status) {
        this.on_status = on_status;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getJoin_reason() {
        return join_reason;
    }

    public void setJoin_reason(String join_reason) {
        this.join_reason = join_reason;
    }

    public String getAttendance_category() {
        return attendance_category;
    }

    public void setAttendance_category(String attendance_category) {
        this.attendance_category = attendance_category;
    }

    public String getJob_level() {
        return job_level;
    }

    public void setJob_level(String job_level) {
        this.job_level = job_level;
    }

    public String getAdministrative_post() {
        return administrative_post;
    }

    public void setAdministrative_post(String administrative_post) {
        this.administrative_post = administrative_post;
    }

    public String getProf_and_tech_post() {
        return prof_and_tech_post;
    }

    public void setProf_and_tech_post(String prof_and_tech_post) {
        this.prof_and_tech_post = prof_and_tech_post;
    }

    public String getSpecial_experience() {
        return special_experience;
    }

    public void setSpecial_experience(String special_experience) {
        this.special_experience = special_experience;
    }

    public String getLast_edu_background() {
        return last_edu_background;
    }

    public void setLast_edu_background(String last_edu_background) {
        this.last_edu_background = last_edu_background;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public Timestamp getDegree_time() {
        return degree_time;
    }

    public void setDegree_time(Timestamp degree_time) {
        this.degree_time = degree_time;
    }

    public String getLast_degree() {
        return last_degree;
    }

    public void setLast_degree(String last_degree) {
        this.last_degree = last_degree;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getMentor_type() {
        return mentor_type;
    }

    public void setMentor_type(String mentor_type) {
        this.mentor_type = mentor_type;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getPost_type() {
        return post_type;
    }

    public void setPost_type(String post_type) {
        this.post_type = post_type;
    }

    public String getGraduate_province() {
        return graduate_province;
    }

    public void setGraduate_province(String graduate_province) {
        this.graduate_province = graduate_province;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "salary_id='" + salary_id + '\'' +
                ", name='" + name + '\'' +
                ", gender=" + gender +
                ", office='" + office + '\'' +
                ", birthday=" + birthday +
                ", race='" + race + '\'' +
                ", identity='" + identity + '\'' +
                ", hometown='" + hometown + '\'' +
                ", politics_status='" + politics_status + '\'' +
                ", join_time=" + join_time +
                ", join_school_time=" + join_school_time +
                ", join_job_time=" + join_job_time +
                ", job='" + job + '\'' +
                ", job_status='" + job_status + '\'' +
                ", authorized=" + authorized +
                ", on_status='" + on_status + '\'' +
                ", department='" + department + '\'' +
                ", join_reason='" + join_reason + '\'' +
                ", attendance_category='" + attendance_category + '\'' +
                ", job_level='" + job_level + '\'' +
                ", administrative_post='" + administrative_post + '\'' +
                ", prof_and_tech_post='" + prof_and_tech_post + '\'' +
                ", special_experience='" + special_experience + '\'' +
                ", last_edu_background='" + last_edu_background + '\'' +
                ", degree='" + degree + '\'' +
                ", degree_time=" + degree_time +
                ", last_degree='" + last_degree + '\'' +
                ", subject='" + subject + '\'' +
                ", remark='" + remark + '\'' +
                ", mentor_type='" + mentor_type + '\'' +
                ", major='" + major + '\'' +
                ", post_type='" + post_type + '\'' +
                ", graduate_province='" + graduate_province + '\'' +
                '}';
    }
}
