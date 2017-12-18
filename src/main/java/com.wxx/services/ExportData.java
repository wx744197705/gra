package com.wxx.services;

import com.wxx.model.Schedules;
import com.wxx.model.WorkCheck;
import org.apache.poi.hssf.usermodel.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
/**
 * @author wangxinxin
 * */
public class ExportData {
    public String exportHis(HttpServletRequest request, HttpServletResponse response)throws Exception{
        HttpSession session = request.getSession();
        Object list =  session.getAttribute("history");
        if (list == null) {
            return "call.jsp";
        }
        HSSFWorkbook wb = new HSSFWorkbook();
        // 2.在workbook中添加一个sheet，对应Excel中的一个sheet
        HSSFSheet sheet = wb.createSheet("history");
        // 3.在sheet中添加表头第0行，老版本poi对excel行数列数有限制short
        HSSFRow row = sheet.createRow(0);
        // 4.创建单元格，设置值表头，设置表头居中
        HSSFCellStyle style = wb.createCellStyle();
        // 居中格式
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        //设置默认宽度
        sheet.setDefaultColumnWidth(20);

        // 设置表头
        if (list instanceof List){
            List list1 = (List) list;
            if (list1.get(0) instanceof WorkCheck){
                List<WorkCheck> list2 = list1;
                HSSFCell cell = row.createCell(0);
                cell.setCellValue("学生学号");
                cell.setCellStyle(style);
                cell = row.createCell(1);
                cell.setCellValue("姓名");
                cell.setCellStyle(style);
                cell = row.createCell(2);
                cell.setCellValue("班级");
                cell.setCellStyle(style);
                cell = row.createCell(3);
                cell.setCellValue("备注");
                cell.setCellStyle(style);
                cell = row.createCell(4);
                cell.setCellValue("点名时间");
                cell.setCellStyle(style);
                cell = row.createCell(5);
                cell.setCellValue("学院");
                cell.setCellStyle(style);
                for (int i = 0; i < list2.size(); i++) {
                    row = sheet.createRow(i + 1);
                    WorkCheck workCheck = list2.get(i);
                    row.createCell(0).setCellValue(workCheck.getStuid());
                    row.createCell(1).setCellValue(workCheck.getRoster().getStuname());
                    row.createCell(2).setCellValue(workCheck.getRoster().getStuclass());
                    row.createCell(3).setCellValue(workCheck.getCallno());
                    row.createCell(4).setCellValue(workCheck.getCalldate());
                    row.createCell(5).setCellValue(workCheck.getRoster().getStukind());
                }
            }
            if (list1.get(0) instanceof Schedules){
                List<Schedules> list2 = list1;
                HSSFCell cell = row.createCell(0);
                cell.setCellValue("课程");
                cell.setCellStyle(style);
                cell = row.createCell(1);
                cell.setCellValue("任课教师");
                cell.setCellStyle(style);
                cell = row.createCell(2);
                cell.setCellValue("班级");
                cell.setCellStyle(style);
                cell = row.createCell(3);
                cell.setCellValue("星期");
                cell.setCellStyle(style);
                cell = row.createCell(4);
                cell.setCellValue("开始时间");
                cell.setCellStyle(style);
                cell = row.createCell(5);
                cell.setCellValue("结束时间");
                cell = row.createCell(6);
                cell.setCellValue("排课时间");
                cell.setCellStyle(style);
                for (int i = 0; i < list2.size(); i++) {
                    row = sheet.createRow(i + 1);
                    Schedules schedules = list2.get(i);
                    row.createCell(0).setCellValue(schedules.getCourse().getCoursename());
                    row.createCell(1).setCellValue(schedules.getUser().getName());
                    row.createCell(2).setCellValue(schedules.getScheclass());
                    row.createCell(3).setCellValue(schedules.getScheweek());
                    row.createCell(4).setCellValue(schedules.getSchebegin());
                    row.createCell(5).setCellValue(schedules.getScheend());
                    row.createCell(6).setCellValue(schedules.getSchedate());
                }
            }
        }
        String fileName = "history";
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        byte[] content = os.toByteArray();
        InputStream is = new ByteArrayInputStream(content);
        // 设置response参数，可以打开下载页面
        response.reset();
        response.setContentType("application/vnd.ms-excel;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment;filename="
                + new String((fileName + ".xls").getBytes(), "iso-8859-1"));
        ServletOutputStream out = response.getOutputStream();
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            bis = new BufferedInputStream(is);
            bos = new BufferedOutputStream(out);
            byte[] buff = new byte[2048];
            int bytesRead;
            // Simple read/write loop.
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bis != null){
                bis.close();
            }
            if (bos != null){
                bos.close();
            }
        }
        return "call.jsp";

    }
}
