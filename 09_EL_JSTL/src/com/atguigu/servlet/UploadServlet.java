package com.atguigu.servlet;



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

public class UploadServlet extends HttpServlet {
    /**
     * 用来处理文件上传
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("文件上传过来了");
//        ServletInputStream inputStream = req.getInputStream();
//        byte[] buffer=new byte[1024000];
//        int read = inputStream.read(buffer);
//        System.out.println(new String(buffer,0,read));
    //1先判断上传的数据是否多段数据，只有是多段的数据，才是文件上传的
        if (ServletFileUpload.isMultipartContent(req)){
            //创建FileItemFactory工厂实现类
            FileItemFactory fileItemFactory=new DiskFileItemFactory();
            //创建用于解析上传数据的工具类ServletFileUpload类
            ServletFileUpload servletFileUpload=new ServletFileUpload(fileItemFactory);

            try {
                //解析上传的数据，得到每一个表单项FileItem
                List<FileItem> list = servletFileUpload.parseRequest(req);
                //循环判断，每一个表单项，是普通类型，还是上传的文件
                for (FileItem fileItem: list){
                    if (fileItem.isFormField()){
                        //普通表单项
                        System.out.println("表单项的name属性值："+fileItem.getFieldName());

                        //参数utf-8解决乱码问题
                        System.out.println("表单项的value属性值："+fileItem.getString("UTF-8"));
                    }else {
                        //上传的文件
                        System.out.println("表单项的name属性值："+fileItem.getFieldName());
                        System.out.println("上传的文件名："+fileItem.getName());

                        fileItem.write(new File("H:\\"+fileItem.getName()));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
