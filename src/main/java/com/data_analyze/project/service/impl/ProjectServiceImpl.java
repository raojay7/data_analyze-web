package com.data_analyze.project.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.project.dao.ProjectMapper;
import com.data_analyze.project.dao.ProjectSysMapper;
import com.data_analyze.project.entity.Project;
import com.data_analyze.project.service.ProjectService;
import com.data_analyze.teacher.dao.TeacherMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by jiacheng on 17-3-19.
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private ProjectMapper projectMapper;

    @Autowired
    private ProjectSysMapper projectSysMapper;

    @Override
    public int insert(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    @Deprecated
    public void importProject(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Project project = new Project();
            DataFormatter formatter = new DataFormatter();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                if(row == null) {
                    break;
                }
                Cell cellName = row.getCell(1);
                Cell cellBugdet = row.getCell(2);
                Cell cellType = row.getCell(3);

                String name = formatter.formatCellValue(cellName);
                String budget = formatter.formatCellValue(cellBugdet);
                String type = formatter.formatCellValue(cellType);

                String salaryId = teacherMapper.getSalaryIdFromName(name);
                if(salaryId == null) {
                    continue;
                }

                project.setSalary_id(salaryId);
                project.setName(name);
                project.setType((type==null||"".equals(type))?null:("0".equals(type)? Boolean.FALSE: Boolean.TRUE));
                project.setBudget_in_acc((budget==null||"".equals(budget))?0: Float.valueOf(budget));

                System.out.println(project);
                projectSysMapper.insertDynamic(project, "projects"+year);
            }
            System.out.println(year + "ok");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int delete(Project entity) throws Exception
    {
        return 0;
    }

    @Override
    public Project select(Project entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Project> selectPage(Page<Project> page) {
        return null;
    }

    @Override
    public Page<Project> selectPageUseDyc(Page<Project> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Project entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Project> selectPageListDynamic(@Param("pages") Page<Project> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Project entity) {
        return 0;
    }

    @Override
    public Project selectDynamic(@Param("tableName") String table, @Param("items") Project entity) {
        return null;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Project entity) {
        return 0;
    }

    @Override
    public Map<String, Float> getAveProjectMoneyData(String year) {
        Map<String, Float> result = new HashMap<>();
        int allPeopleNumber = teacherMapper.execute("select count(*) from teachers;");
        int csPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算机科学与技术系';");
        int caculateCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算中心';");
        int autoPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电气与自动化工程系';");
        int expCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电工电子实验中心';");
        int eePeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电子信息工程系';");

        float all = projectMapper.getAllBudget(year);
        float csBudget = projectMapper.getBudgetInOffice(year, "计算机科学与技术系");
        float caculateCenterBudget = projectMapper.getBudgetInOffice(year, "计算中心");
        float autoBudget = projectMapper.getBudgetInOffice(year, "电气与自动化工程系");
        float expCenterBudget = projectMapper.getBudgetInOffice(year, "电工电子实验中心");
        float eeBudget = projectMapper.getBudgetInOffice(year, "电子信息工程系");

        result.put("QY", all/allPeopleNumber);
        result.put("JSJKXYJSX", csBudget/csPeopleNumber);
        result.put("JSZX", caculateCenterBudget/caculateCenterPeopleNumber);
        result.put("DQYZDHGCX", autoBudget/autoPeopleNumber);
        result.put("DGDZSYZX", expCenterBudget/expCenterPeopleNumber);
        result.put("DZXXGCX", eeBudget/eePeopleNumber);

        return result;
    }

    @Override
    public Map<String, Float> getSumProjectMoneyData(String year) {
        Map<String, Float> result = new HashMap<>();
        float all = projectMapper.getAllBudget(year);
        float csBudget = projectMapper.getBudgetInOffice(year, "计算机科学与技术系");
        float caculateCenterBudget = projectMapper.getBudgetInOffice(year, "计算中心");
        float autoBudget = projectMapper.getBudgetInOffice(year, "电气与自动化工程系");
        float expCenterBudget = projectMapper.getBudgetInOffice(year, "电工电子实验中心");
        float eeBudget = projectMapper.getBudgetInOffice(year, "电子信息工程系");

        result.put("QY", all);
        result.put("JSJKXYJSX", csBudget);
        result.put("JSZX", caculateCenterBudget);
        result.put("DQYZDHGCX", autoBudget);
        result.put("DGDZSYZX", expCenterBudget);
        result.put("DZXXGCX", eeBudget);

        return result;
    }

    @Override
    public Map<String, Float> getFirstTenFromAllMoneyData(String year) {
        List<Project> peopleProjectList = projectMapper.getPeopleAndBudget(year);
        Map<String, Float> result = new HashMap<>();
        for(int i=0; i<10&&i<result.size(); ++i) {
            result.put(peopleProjectList.get(i).getName(), peopleProjectList.get(i).getBudget_in_acc());
        }
        return result;
    }

    @Override
    public Map<String, Float> getEveryYearMoneyData(String year) {
        List<Project> teachersProjectList = projectMapper.getPeopleAndBudget(year);
        Map<String, Float> result = new HashMap<>();
        for(Iterator<Project> it = teachersProjectList.iterator(); it.hasNext(); ) {
            Project project = it.next();
            result.put(project.getName(), project.getBudget_in_acc());
        }
        return result;
    }

    @Override
    public Map<String, Float> getAllYearSumMoneyData() {
        int beginYear = 2010;
        int endYear = 2016;
        Map<String, Float> result = new HashMap<>();
        for(int i=beginYear; i<=endYear; ++i) {
            String strYear = i+"";
            List<Project> projectList = projectMapper.getPeopleAndBudget(strYear);
            for(Iterator<Project> it = projectList.iterator(); it.hasNext(); ) {
                Project project = it.next();
                Float hadMoney = result.get(project.getName());
                result.put(project.getName(), hadMoney==null?project.getBudget_in_acc():hadMoney+project.getBudget_in_acc());
            }
        }
        return result;
    }
}
