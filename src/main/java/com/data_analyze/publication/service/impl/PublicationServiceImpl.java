package com.data_analyze.publication.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.publication.dao.PublicationMapper;
import com.data_analyze.publication.entity.Publication;
import com.data_analyze.publication.service.PublicationService;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.utils.DateTimeHelper;
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
 * Created by jiacheng on 17-3-18.
 */
@Service("publicationService")
public class PublicationServiceImpl implements PublicationService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private PublicationMapper publicationMapper;

    @Override
    public void importPublication(File excel, String fileType, int year) {
        try {
            FileInputStream fileInputStream = new FileInputStream(excel);
            boolean is03Excel = fileType.equals("xls");
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);
            Sheet sheet = workbook.getSheetAt(0);
            Publication publication = new Publication();
            for(int j=1; j<sheet.getPhysicalNumberOfRows(); ++j){
                Row row = sheet.getRow(j);
                String name = row.getCell(1).getStringCellValue().trim();
                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null){
                    continue;
                }
                System.out.println(name+" salaryId"+salary_id);
                for(int i = 0; i<=10; ++i){
                    if(row.getCell(i)!=null) {
                        row.getCell(i).setCellType(Cell.CELL_TYPE_STRING);
                    }
                }
                System.out.println("set all type");
                publication.setSalary_id(salary_id);
                publication.setAuthor(name);
                publication.setUniversity(row.getCell(2).getStringCellValue().trim());
                publication.setTitle(row.getCell(3).getStringCellValue().trim());
                publication.setYear(DateTimeHelper.ordinaryStringToTimestamp(row.getCell(4).getStringCellValue().trim()));
                publication.setJournal_name(row.getCell(5).getStringCellValue().trim());
                publication.setType(row.getCell(6).getStringCellValue().trim());
                String cpd = row.getCell(7).getStringCellValue().trim();
                publication.setNum_of_wd_cpd((cpd==null||"".equals(cpd))?null: Float.valueOf(cpd));
                String all = row.getCell(8).getStringCellValue().trim();
                publication.setNum_of_wd_all((all==null||"".equals(all))?null: Float.valueOf(all));
                publication.setLevel(row.getCell(9).getStringCellValue().trim());
                String workload = row.getCell(10).getStringCellValue().trim();
                publication.setWorkload((workload==null||"".equals(workload))?null: Float.valueOf(workload));

                if (year == 2015){
                    publicationMapper.insert2015(publication);
                } else {
                    publicationMapper.insert2016(publication);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int insert(Publication entity) throws Exception
    {
        return 0;
    }

    @Override
    public int update(Publication entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Publication entity) throws Exception
    {
        return 0;
    }

    @Override
    public Publication select(Publication entity) throws Exception
    {
        return null;
    }

    @Override
    public Page<Publication> selectPage(Page<Publication> page) {
        return null;
    }

    @Override
    public Page<Publication> selectPageUseDyc(Page<Publication> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Publication entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Publication> selectPageListDynamic(@Param("pages") Page<Publication> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Publication entity) {
        return 0;
    }

    @Override
    public Publication selectDynamic(@Param("tableName") String table, @Param("items") Publication entity) {
        return null;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Publication entity) {
        return 0;
    }
}
