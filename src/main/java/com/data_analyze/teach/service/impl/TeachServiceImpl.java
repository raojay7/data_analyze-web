package com.data_analyze.teach.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teach.dao.TeachMapper;
import com.data_analyze.teach.dao.TeachSysMapper;
import com.data_analyze.teach.entity.Teach;
import com.data_analyze.teach.service.TeachService;
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
@Service("teachService")
public class TeachServiceImpl implements TeachService {
    @Autowired
    private TeachMapper teachMapper;

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private TeachSysMapper teachSysMapper;

    @Override
    public int insert(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teach selectDynamic(@Param("tableName") String table, @Param("items") Teach entity) {
        return null;
    }


    @Override
    public int update(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Teach entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teach select(Teach entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Teach> selectPage(Page<Teach> page) {
        return null;
    }

    @Override
    public Page<Teach> selectPageUseDyc(Page<Teach> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Teach entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teach> selectPageListDynamic(@Param("pages") Page<Teach> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teach entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teach entity) {
        return 0;
    }

    @Override
    @Deprecated
    public void importTeach(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Teach teach = new Teach();
            DataFormatter formatter = new DataFormatter();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                if(row == null){
                    break;
                }
                String name = formatter.formatCellValue(row.getCell(0)).trim();
                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null){
                    continue;
                }
                System.out.println(name+" salaryId"+salary_id);
                for(int i = 0; i<20; ++i){
                    if(row.getCell(i)!=null) {
                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
                    }
                }
                teach.setSalary_id(salary_id);
                teach.setName(name);
                String rank = formatter.formatCellValue(row.getCell(1)).trim();
                String duty = formatter.formatCellValue(row.getCell(2)).trim();
                String therory_fs = formatter.formatCellValue(row.getCell(3)).trim();
                String profession_fs = formatter.formatCellValue(row.getCell(4)).trim();
                String ready_fs = formatter.formatCellValue(row.getCell(5)).trim();
                String guide_fs = formatter.formatCellValue(row.getCell(6)) .trim();
                String graduation_fs = formatter.formatCellValue(row.getCell(7)).trim();
                String first_sum = formatter.formatCellValue(row.getCell(8)).trim();
                String theory_ss = formatter.formatCellValue(row.getCell(9)).trim();
                String profession_ss = formatter.formatCellValue(row.getCell(10)).trim();
                String ready_ss = formatter.formatCellValue(row.getCell(11)).trim();
                String guide_ss = formatter.formatCellValue(row.getCell(12)).trim();
                String graduation_ss = formatter.formatCellValue(row.getCell(13)).trim();
                String second_sum = formatter.formatCellValue(row.getCell(14)).trim();
                String remark_job = formatter.formatCellValue(row.getCell(15)).trim();
                String year_sum = formatter.formatCellValue(row.getCell(16)).trim();
                String seconde_etc = formatter.formatCellValue(row.getCell(17)).trim();
                String college_workload = formatter.formatCellValue(row.getCell(18)).trim();
                teach.setRank(rank);
                teach.setDuty(duty);
                teach.setTheory_fs("".equals(therory_fs)?null: Float.valueOf(therory_fs));
                teach.setProfession_fs("".equals(profession_fs)?null: Float.valueOf(profession_fs));
                teach.setReady_fs("".endsWith(ready_fs)?null: Float.valueOf(ready_fs));
                teach.setGuide_fs("".equals(guide_fs)?null: Float.valueOf(guide_fs));
                teach.setGraduation_fs("".equals(graduation_fs)?null: Float.valueOf(graduation_fs));
                teach.setFirst_sum("".equals(first_sum)?null: Float.valueOf(first_sum));
                teach.setTheory_ss("".equals(theory_ss)?null: Float.valueOf(theory_ss));
                teach.setProfession_ss("".equals(profession_ss)?null: Float.valueOf(profession_ss));
                teach.setReady_ss("".equals(ready_ss)?null: Float.valueOf(ready_ss));
                teach.setGuide_ss("".equals(guide_ss)?null: Float.valueOf(guide_ss));
                teach.setGraduation_ss("".equals(graduation_ss)?null: Float.valueOf(graduation_ss));
                teach.setSecond_sum("".equals(second_sum)?null: Float.valueOf(second_sum));
                teach.setRemark_job(remark_job);
                teach.setYear_sum("".equals(year_sum)?null: Float.valueOf(year_sum));
                teach.setSecond_etc("".equals(seconde_etc)?null: Float.valueOf(seconde_etc));
                teach.setCollege_workload("".equals(college_workload)?null: Float.valueOf(college_workload));

                System.out.println(teach);
                teachSysMapper.insertDynamic(teach, "teach"+year);
            }
            System.out.println(year + "ok");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Map<String, Float> getAveTeachData(String year) {
        Map<String, Float> result = new HashMap<>();
//        int allPeopleNumber = teacherMapper.execute("select count(*) from teachers where teachers.prof_and_tech_post not like '%实验%';");
//        int csPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算机科学与技术系' and teachers.prof_and_tech_post not like '%实验%';");
//        int caculateCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算中心' and teachers.prof_and_tech_post not like '%实验%';");
//        int autoPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电气与自动化工程系' and teachers.prof_and_tech_post not like '%实验%';");
//        int expCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电工电子实验中心' and teachers.prof_and_tech_post not like '%实验%';");
//        int eePeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电子信息工程系' and teachers.prof_and_tech_post not like '%实验%';");

//        int allPeopleNumber = teacherMapper.execute("select count(*) from teachers;");
        int csPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算机科学与技术系';");
        int caculateCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算中心';");
        int autoPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电气与自动化工程系';");
        int expCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电工电子实验中心';");
        int eePeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电子信息工程系';");

        int allPeopleNumber = csPeopleNumber + caculateCenterPeopleNumber + autoPeopleNumber + expCenterPeopleNumber + eePeopleNumber;

//        float allWork = teachMapper.getAllWork(year);
        float csWork =  teachMapper.getOfficeWork(year, "计算机科学与技术系");
        float caculateCenterWork =  teachMapper.getOfficeWork(year, "计算中心");
        float autoWork =  teachMapper.getOfficeWork(year, "电气与自动化工程系");
        float expCenterWork =  teachMapper.getOfficeWork(year, "电工电子实验中心");
        float eeWork =  teachMapper.getOfficeWork(year, "电子信息工程系");

        float allWork = csWork + caculateCenterWork + autoWork + expCenterWork + eeWork;

        result.put("XY", allWork/allPeopleNumber);  // 学院平均
        result.put("JSJKXYJSX", csWork/csPeopleNumber); // 计算机科学与技术系平均
        result.put("JSZX", caculateCenterWork/caculateCenterPeopleNumber); // 计算中心平均
        result.put("DQYZDHGCX", autoWork/autoPeopleNumber); // 电气与自动化工程系平均
        result.put("DGDZSYZX", expCenterWork/expCenterPeopleNumber); // 电工电子实验中心平均
        result.put("DZXXGCX", eeWork/eePeopleNumber); // 电子信息工程系平均

        return result;
    }

    @Override
    public Map<String, Float> getSumTeachData(String year) {
        Map<String, Float> result = new HashMap<>();

//        float allWork = teachMapper.getAllWork(year);
        float csWork =  teachMapper.getOfficeWork(year, "计算机科学与技术系");
        float caculateCenterWork =  teachMapper.getOfficeWork(year, "计算中心");
        float autoWork =  teachMapper.getOfficeWork(year, "电气与自动化工程系");
        float expCenterWork =  teachMapper.getOfficeWork(year, "电工电子实验中心");
        float eeWork =  teachMapper.getOfficeWork(year, "电子信息工程系");

        float allWork = csWork + caculateCenterWork + autoWork + expCenterWork + eeWork;

        result.put("XY", allWork);  // 学院总
        result.put("JSJKXYJSX", csWork); // 计算机科学与技术系总
        result.put("JSZX", caculateCenterWork); // 计算中心总
        result.put("DQYZDHGCX", autoWork); // 电气与自动化工程系总
        result.put("DGDZSYZX", expCenterWork); // 电工电子实验中心总
        result.put("DZXXGCX", eeWork); // 电子信息工程系总
        return result;
    }

    @Override
    public Map<String, Float> getFirstTenTeachData(String year, String officeName) {
        List<Teach> teachList = teachMapper.queryTeachByPageInOffice(year, officeName, "0","10");
        Map<String, Float> result = new HashMap<>();
        for(Iterator<Teach> it = teachList.iterator(); it.hasNext(); ) {
            Teach teach = it.next();
            result.put(teach.getName(), teach.getYear_sum());
        }
        return result;
    }

    @Override
    public Map<String, Float> getFirstToTenFromAllTeachData(String year) {
        List<Teach> teachList = teachMapper.queryTeachByPage(year, "0","10");
        Map<String, Float> result = new HashMap<>();
        for(Iterator<Teach> it = teachList.iterator(); it.hasNext(); ) {
            Teach teach = it.next();
            result.put(teach.getName(), teach.getYear_sum());
        }
        return result;
    }

    @Override
    public Map<String, Float> getAveRealTeachData(String year) {
        // 本科生理论课 + 实验课 + 研究生理论课
        Map<String, Float> result = new HashMap<>();
//        int allPeopleNumber = teacherMapper.execute("select count(*) from teachers;");
        int csPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算机科学与技术系';");
        int caculateCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='计算中心';");
        int autoPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电气与自动化工程系';");
        int expCenterPeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电工电子实验中心';");
        int eePeopleNumber = teacherMapper.execute("select count(*) from teachers where office='电子信息工程系';");

        int allPeopleNumber =  csPeopleNumber + caculateCenterPeopleNumber + autoPeopleNumber + expCenterPeopleNumber + eePeopleNumber;

//        float allWork = teachMapper.getAllRealWork(year);
        float csWork =  teachMapper.getOfficeRealWork(year, "计算机科学与技术系");
        float caculateCenterWork =  teachMapper.getOfficeRealWork(year, "计算中心");
        float autoWork =  teachMapper.getOfficeRealWork(year, "电气与自动化工程系");
        float expCenterWork =  teachMapper.getOfficeRealWork(year, "电工电子实验中心");
        float eeWork =  teachMapper.getOfficeRealWork(year, "电子信息工程系");

        float allWork = csWork + caculateCenterWork + autoWork + expCenterWork + eeWork;

        result.put("XY", allWork/allPeopleNumber);  // 学院平均
        result.put("JSJKXYJSX", csWork/csPeopleNumber); // 计算机科学与技术系平均
        result.put("JSZX", caculateCenterWork/caculateCenterPeopleNumber); // 计算中心平均
        result.put("DQYZDHGCX", autoWork/autoPeopleNumber); // 电气与自动化工程系平均
        result.put("DGDZSYZX", expCenterWork/expCenterPeopleNumber); // 电工电子实验中心平均
        result.put("DZXXGCX", eeWork/eePeopleNumber); // 电子信息工程系平均

        return result;
    }

    @Override
    public Map<String, Float> getRealSumTeachData(String year) {
        Map<String, Float> result = new HashMap<>();

//        float allWork = teachMapper.getAllRealWork(year);
        float csWork =  teachMapper.getOfficeRealWork(year, "计算机科学与技术系");
        float caculateCenterWork =  teachMapper.getOfficeRealWork(year, "计算中心");
        float autoWork =  teachMapper.getOfficeRealWork(year, "电气与自动化工程系");
        float expCenterWork =  teachMapper.getOfficeRealWork(year, "电工电子实验中心");
        float eeWork =  teachMapper.getOfficeRealWork(year, "电子信息工程系");

        float allWork = csWork + caculateCenterWork + autoWork + expCenterWork + eeWork;

        result.put("XY", allWork);  // 学院平均
        result.put("JSJKXYJSX", csWork); // 计算机科学与技术系平均
        result.put("JSZX", caculateCenterWork); // 计算中心平均
        result.put("DQYZDHGCX", autoWork); // 电气与自动化工程系平均
        result.put("DGDZSYZX", expCenterWork); // 电工电子实验中心平均
        result.put("DZXXGCX", eeWork); // 电子信息工程系平均

        return result;
    }

    @Override
    public Map<String, Float> getNewFirstToTenTeachData(String year, String officeName) {
        List<Teach> teachList = teachMapper.queryRealTeachByPageInOffice(year,officeName,"0","10");
        Map<String, Float> result = new HashMap<>();
        for(int i=0; i<10&&i<teachList.size(); ++i) {
            result.put(teachList.get(i).getName(), teachList.get(i).getYear_sum());
        }
        return result;
    }
}
