package com.data_analyze.paper.service.impl;

import com.data_analyze.core.entity.Page;
import com.data_analyze.paper.dao.PaperMapper;
import com.data_analyze.paper.dao.PaperSysMapper;
import com.data_analyze.paper.entity.Paper;
import com.data_analyze.paper.service.PaperService;
import com.data_analyze.teacher.dao.TeacherMapper;
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
import java.util.Map;

/**
 * Created by liujie on 2017/3/17.
 */

@Service("paperService")
public class PaperServiceImpl implements PaperService {


    @Autowired
    private PaperMapper paperMapper;

    @Autowired
    private PaperSysMapper paperSysMapper;

    @Autowired
    private TeacherMapper teacherMapper;


    @Override
    public int insert(Paper entity) throws Exception
    {
        return paperMapper.insert(entity);
    }

    @Override
    public int update(Paper entity) throws Exception
    {
        return 0;
    }

    @Override
    public int delete(Paper entity) throws Exception
    {
        return 0;
    }

    @Override
    public Paper select(Paper entity) throws Exception
    {
        return null;
    }



    @Override
    public Page<Paper> selectPageUseDyc(Page<Paper> page) {
        return null;
    }

    @Override
    public void importPaper(File excel, String fileType, int year) {

        try {

            FileInputStream fileInputStream = new FileInputStream(excel);

            boolean is03Excel = fileType.equals(".xls");

            //兼容03,07的格式
            Workbook workbook = is03Excel ? new HSSFWorkbook(fileInputStream) : new XSSFWorkbook(fileInputStream);

            Sheet sheet = workbook.getSheetAt(0);

            Paper paper = new Paper();
            for (int j = 1 ; j < sheet.getPhysicalNumberOfRows() ; j++)
            {

                Row row = sheet.getRow(j);

                String ids_num = row.getCell(1)==null?null:row.getCell(1).getStringCellValue().trim();
                String name = row.getCell(3)==null?null:row.getCell(3).getStringCellValue().trim();
                String level = row.getCell(4)==null?null:row.getCell(4).getStringCellValue().trim();
                String title = row.getCell(5)==null?null:row.getCell(5).getStringCellValue().trim();

                String salary_id = teacherMapper.getSalaryIdFromName(name);
                if(salary_id == null) {
                    continue;
                }

                paper.setIds_num(ids_num);
                paper.setYear(DateTimeHelper.ordinaryStringToTimestamp(year+""));
                paper.setSalary_id(salary_id);
                paper.setAuthor(name);
                paper.setLevel(level);
                paper.setTitle(title);
                System.out.println(paper);
                paperSysMapper.insertDynamic(paper, "papers"+year);

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
    public Page<Paper> selectPage(Page<Paper> page) {
        return null;
    }

    @Override
    public int insertDynamic(@Param("teach") Paper entity, @Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public Page<Paper> selectPageListDynamic(@Param("pages") Page<Paper> page, @Param("tableName") String tableName) {
        return null;
    }

    @Override
    public int selectPageCountDynamic(@Param("tableName") String tableName) {
        return 0;
    }

    @Override
    public int deleteDynamic(@Param("tablesName") String tableName, @Param("items") Paper entity) {
        return 0;
    }

    @Override
    public Paper selectDynamic(@Param("tableName") String table, @Param("items") Paper entity) {
        return null;
    }

    @Override
    public int updateDynamic(@Param("tableName") String tableName, @Param("items") Paper entity) {
        return 0;
    }

    @Override
    public Map<String, Integer> getPaperNumber(String year) {
        // 只算SCI
        int all = paperMapper.queryAll(year,"SCI").size(); // 全院
        int cs = paperMapper.queryAllInOffice(year, "计算机科学与技术系", "SCI").size();  // 计算机科学与技术系
        int caculateCenter = paperMapper.queryAllInOffice(year, "计算中心", "SCI").size();  // 计算中心
        int auto = paperMapper.queryAllInOffice(year, "电气与自动化工程系", "SCI").size();  // 电气与自动化工程系
        int expCenter = paperMapper.queryAllInOffice(year, "电工电子实验中心", "SCI").size();  // 电工电子实验中心
        int ee = paperMapper.queryAllInOffice(year, "电子信息工程系", "SCI").size();  // 电子信息工程系

        Map<String, Integer> result = new HashMap<>();
        result.put("QY", all);
        result.put("JSJKXYJSX", cs);
        result.put("JSZX", caculateCenter);
        result.put("DQYZDHGCX", auto);
        result.put("DGDZSYZX", expCenter);
        result.put("DZXXGCX", ee);

        return result;
    }
}
