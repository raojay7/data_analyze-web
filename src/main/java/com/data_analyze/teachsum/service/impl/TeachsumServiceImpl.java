package com.data_analyze.teachsum.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teachsum.dao.TeachsumMapper;
import com.data_analyze.teachsum.entity.Teachsum;
import com.data_analyze.teachsum.service.TeachsumService;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
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

/**
 * Created by jiacheng on 17-3-19.
 */
@Service("teachsumService")
public class TeachsumServiceImpl implements TeachsumService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private TeachsumMapper teachsumMapper;
    @Override
    public int insert(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Teachsum entity) throws Exception
    {
        return 0;
    }

    @Override
    public Teachsum selectDynamic(@Param("tableName") String table, @Param("items") Teachsum entity) {
        return null;
    }

    @Override
    public Teachsum select(Teachsum entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Teachsum> selectPage(Page<Teachsum> page) {
        return null;
    }

    @Override
    public Page<Teachsum> selectPageUseDyc(Page<Teachsum> page) {
        return null;
    }

    @Override
    public void importTeachsum(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Teachsum teachsum = new Teachsum();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                String name = row.getCell(2).getStringCellValue().trim();
                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null){
                    continue;
                }
                System.out.println(name+" salaryId"+salary_id);
                for(int i = 0; i<8; ++i){
                    if(row.getCell(i)!=null) {
                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
                    }
                }
                teachsum.setSalary_id(salary_id);
                teachsum.setName(name);
                String department = row.getCell(0)==null?null:row.getCell(0).getStringCellValue().trim();
                String teach_workload = row.getCell(4)==null?null:row.getCell(4).getStringCellValue().trim();
                String mentor_workload = row.getCell(5)==null?null:row.getCell(5).getStringCellValue().trim();
                String reform_workload = row.getCell(6)==null?null:row.getCell(6).getStringCellValue().trim();
                String sum_workload = row.getCell(7)==null?null:row.getCell(7).getStringCellValue().trim();

                teachsum.setSalary_id(salary_id);
                teachsum.setName(name);
                teachsum.setYear(year);
                teachsum.setDepartment(department);
                teachsum.setTeach_workload(teach_workload==null?null: Float.valueOf(teach_workload));
                teachsum.setMentor_load(mentor_workload==null?null: Float.valueOf(mentor_workload));
                teachsum.setReform_workload(reform_workload==null?null: Float.valueOf(reform_workload));
                teachsum.setSum_workload(sum_workload==null?null: Float.valueOf(sum_workload));

                System.out.println(teachsum);
                if (year == 2015){
                    teachsumMapper.insert2015(teachsum);
                } else {
                    teachsumMapper.insert2016(teachsum);
                }
            }
            System.out.println(year + "ok");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int insertDynamic(@Param("teach") Teachsum entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Teachsum> selectPageListDynamic(@Param("pages") Page<Teachsum> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Teachsum entity) {
        return 0;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Teachsum entity) {
        return 0;
    }
}
