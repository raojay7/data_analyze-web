package com.data_analyze.teacher.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teacher.service.TeacherService;
import com.data_analyze.utils.DateTimeHelper;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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
 * Created by liujie on 2017/3/17.
 */

@Service("teacherService")

public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public int insert(Teacher entity) throws Exception
    {
        return 0;
    }

    @Override
    public int insertTeacher(Teacher teacher) {
        return 0;
    }

    @Override
    public int update(Teacher entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Teacher entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teacher select(Teacher entity) throws Exception
    {
        return null;
    }


    @Override
    public Page<Teacher> selectPage(Page<Teacher> page) {
        return null;
    }

    @Override
    public Page<Teacher> selectPageUseDyc(Page<Teacher> page) {
        return null;
    }


    @Deprecated
    public void importTeacherTable(File excel , String fileType){

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);

            Teacher teacher = null;

            for (int j = 1 ; j < 100 ; j++)
            {

                Row row = sheet.getRow(j);

                teacher  = new Teacher();

//                System.out.println(row.getCell(1).getStringCellValue()+" "+row.getCell(2).getStringCellValue()+" "+row.getCell(3).getStringCellValue());

//                //salary
                teacher.setSalary_id(row.getCell(1).getStringCellValue().trim());
//                //name
                teacher.setName(row.getCell(2).getStringCellValue().trim());
//
                teacher.setGender(row.getCell(3).getStringCellValue().equals("男"));

//                insert(teacher);

                System.out.println(teacher);

                System.out.println(j);

            }

            workbook.close();

            fileInputStream.close();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public Teacher selectDynamic(@Param("tableName") String table, @Param("items") Teacher entity) {
        return null;
    }

    @Deprecated
    public void importTeacher(File excel , String fileType){

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);

            Teacher teacher = null;

            for (int j = 1 ; j < sheet.getPhysicalNumberOfRows() ; j++)
            {

                Row row = sheet.getRow(j);

                teacher  = new Teacher();

//                System.out.println(row.getCell(1).getStringCellValue()+" "+row.getCell(2).getStringCellValue()+" "+row.getCell(3).getStringCellValue());

//                //salary
                teacher.setSalary_id(row.getCell(1).getStringCellValue().trim());
//                //name
                teacher.setName(row.getCell(2).getStringCellValue().trim());
//
                teacher.setGender(row.getCell(3).getStringCellValue().trim().equals("男"));

                teacher.setOffice(row.getCell(4).getStringCellValue().trim());

                teacher.setBirthday(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(5).getStringCellValue().trim()));

                teacher.setRace(row.getCell(6).getStringCellValue().trim());

                teacher.setIdentity(row.getCell(7).getStringCellValue().trim());

                teacher.setHometown(row.getCell(8).getStringCellValue().trim());

                teacher.setPolitics_status(row.getCell(9).getStringCellValue().trim());

//                System.out.println();

                teacher.setJoin_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(10).getStringCellValue().trim()));

                teacher.setJoin_school_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(11).getStringCellValue().trim()));

                teacher.setJoin_job_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(12).getStringCellValue().trim()));

                teacher.setJob(row.getCell(13).getStringCellValue().trim());

                teacher.setJob_status(row.getCell(14).getStringCellValue().trim());

                teacher.setAuthorized(row.getCell(15).getStringCellValue().trim().equals("正式在编"));

                teacher.setOn_status(row.getCell(16).getStringCellValue().trim());

                teacher.setDepartment(row.getCell(17).getStringCellValue().trim());

                teacher.setJoin_reason(row.getCell(18).getStringCellValue().trim());

                teacher.setAttendance_category(row.getCell(19).getStringCellValue().trim());

                teacher.setJob_level(row.getCell(20).getStringCellValue().trim());

                teacher.setAdministrative_post(row.getCell(21).getStringCellValue().trim());

                teacher.setProf_and_tech_post(row.getCell(22).getStringCellValue().trim());

                teacher.setSpecial_experience(row.getCell(23).getStringCellValue().trim());

                teacher.setLast_edu_background(row.getCell(24).getStringCellValue().trim());

                teacher.setDegree(row.getCell(25).getStringCellValue().trim());

                teacher.setDegree_time(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(26).getStringCellValue().trim()));

                teacher.setLast_degree(row.getCell(27).getStringCellValue().trim());

                teacher.setSubject(row.getCell(28).getStringCellValue().trim());

                teacher.setRemark(row.getCell(29).getStringCellValue().trim());

                teacher.setMentor_type(row.getCell(30).getStringCellValue().trim());

                teacher.setMajor(row.getCell(31).getStringCellValue().trim());

                insert(teacher);

                System.out.println(teacher);
                teacherMapper.insert(teacher);

                System.out.println(j);

            }

            workbook.close();

            fileInputStream.close();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public String getSalaryIdFromName(String name) {
        return teacherMapper.getSalaryIdFromName(name);
    }

    @Override
    @Deprecated
    public void hello() {
        System.out.println("hello");
    }

    @Override
    public int insertDynamic(@Param("teach") Teacher entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teacher> selectPageListDynamic(@Param("pages") Page<Teacher> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teacher entity) {
        return 0;
    }


    @Override
    public Map<String, Integer> queryPostData(String officeName) {
        Map<String, Integer> map = new HashMap<>();
        map.put("SHFWX", teacherMapper.execute("select count(*) from teachers where office='"+officeName+"' and post_type='社会服务型'"));
        map.put("JXKYBZX", teacherMapper.execute("select count(*) from teachers where office='"+officeName+"' and post_type='教学科研并重型'"));
        map.put("JCJXX", teacherMapper.execute("select count(*) from teachers where office='"+officeName+"' and post_type='基础教学型'"));
        map.put("JXX", teacherMapper.execute("select count(*) from teachers where office='"+officeName+"' and post_type='教学型'"));
        map.put("KYX", teacherMapper.execute("select count(*) from teachers where office='"+officeName+"' and post_type='科研型'"));
        return map;
    }

    @Override
    public Map<String, Integer> getJobLeveData() {
        List<Teacher> professor = teacherMapper.likeQueryByOneColumn("job_level", "正高");
        List<Teacher> associateProfessor = teacherMapper.likeQueryByOneColumn("job_level", "副高");
        List<Teacher> lecturer = teacherMapper.likeQueryByOneColumn("job_level","中级");

        Map<String, Integer> map = new HashMap<>();
        map.put("JS", professor.size()); //教授
        map.put("FJS", associateProfessor.size());
        map.put("JangS", lecturer.size()); // 讲师
        return map;
    }

    @Override
    public Map<String, Map<String, Integer>> getAllPostData() {
        // 岗位名-<系名-人数>
        Map<String, Map<String, Integer>> postMap = new HashMap<>();
        Map<String, Integer> officeNum = new HashMap<>();
        officeNum.put("JSJKXYJSX", teacherMapper.execute(
                "select count(*) from teachers where office='计算机科学与技术系' and job='教师岗位';"
                ));
        officeNum.put("JSZX", teacherMapper.execute(
                "select count(*) from teachers where office='计算中心' and job='教师岗位';"
        ));
        officeNum.put("DQYZDHGCX", teacherMapper.execute(
                "select count(*) from teachers where office='电气与自动化工程系' and job='教师岗位';"
        ));
        officeNum.put("DGDZSYZX", teacherMapper.execute(
                "select count(*) from teachers where office='电工电子实验中心' and job='教师岗位';"
        ));
        officeNum.put("DZXXGCX", teacherMapper.execute(
                "select count(*) from teachers where office='电子信息工程系' and job='教师岗位';"
        ));

        postMap.put("JSGW",officeNum);

        Map<String, Integer> officeNum2 = new HashMap<>();
        officeNum2.put("JSJKXYJSX", teacherMapper.execute(
                "select count(*) from teachers where office='计算机科学与技术系' and job='其他专业技术岗位';"
        ));
        officeNum2.put("JSZX", teacherMapper.execute(
                "select count(*) from teachers where office='计算中心' and job='其他专业技术岗位';"
        ));
        officeNum2.put("DQYZDHGCX", teacherMapper.execute(
                "select count(*) from teachers where office='电气与自动化工程系' and job='其他专业技术岗位';"
        ));
        officeNum2.put("DGDZSYZX", teacherMapper.execute(
                "select count(*) from teachers where office='电工电子实验中心' and job='其他专业技术岗位';"
        ));
        officeNum2.put("DZXXGCX", teacherMapper.execute(
                "select count(*) from teachers where office='电子信息工程系' and job='其他专业技术岗位';"
        ));
        postMap.put("QTZYJSGW",officeNum2);
        return postMap;
    }

    @Override
    public Map<String, Map<String, Integer>> getAllHrProvinceData() {
        // 学位-<省-人数>
        Map<String, Map<String, Integer>> result = new HashMap<>();
        Map<String, Integer> doctor = new HashMap<>();
        Map<String, Integer> master = new HashMap<>();
        Map<String, Integer> bachelor = new HashMap<>();
        result.put("BS", doctor);
        result.put("SS", master);
        result.put("XS", bachelor);

        List<Teacher> teacherList = teacherMapper.getAll();

        for(Iterator it = teacherList.iterator(); it.hasNext(); ) {
            Teacher teacher = (Teacher) it.next();
            String graduate_province = teacher.getGraduate_province();
            if("博士".equals(teacher.getDegree())) {
                doctor.put(graduate_province, doctor.get(graduate_province)==null?1:doctor.get(graduate_province)+1);
            } else if("硕士".equals(teacher.getDegree())) {
                master.put(graduate_province, master.get(graduate_province)==null?1:master.get(graduate_province)+1);
            } else if("学士".equals(teacher.getDegree())) {
                bachelor.put(graduate_province, bachelor.get(graduate_province)==null?1:bachelor.get(graduate_province)+1);
            }
        }

        return result;
    }

    @Override
    public Map<String, String> getAllDoctorName() {
        Map<String, String> result = new HashMap<>();
        List<Teacher> doctorList = teacherMapper.likeQueryByOneColumn("degree","博士");
        for(Iterator<Teacher> it = doctorList.iterator(); it.hasNext(); ) {
            Teacher teacher = it.next();
            result.put(teacher.getName(), teacher.getGraduate_province());
        }
        return result;
    }
}
