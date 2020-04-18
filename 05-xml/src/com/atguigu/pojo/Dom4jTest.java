package com.atguigu.pojo;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

public class Dom4jTest {
    @Test
    public void test1() throws Exception {
      //创建一个SaxReader输入流，去读取xml配置文件，生成document对象
        SAXReader saxReader = new SAXReader();
        try{
            Document document=saxReader.read("src/books.xml");
            System.out.println(document);
        }catch ( Exception e){
            e.printStackTrace();
        }
    }
    /*
    * 读取books.xml文件生成Book类
    * */
    @Test
    public void test2() throws Exception {
        //1读取books.xml文件
        SAXReader reader=new SAXReader();
        //在Junit测试中，相对路径是从模块名开始算
        Document document=reader.read("src/books.xml");
        //2通过Document对象获取根元素
        Element rootElement=document.getRootElement();
        //System.out.println(rootElement);
        //3通过根元素获取book标签对象
        //element()和elements()都是通过标签名查找子元素
        List<Element> books = rootElement.elements("book");
        //4遍历，处理每个book标签转换为Book类
        for (Element book:books){
            //asXML()把标签对象，转换为标签字符串
            //System.out.println(book.asXML());
             Element nameElement=book.element("name");
            //System.out.println(nameElement.asXML());
            //getText()可以获取标签中的文本内容
            String nameText= nameElement.getText();
            //System.out.println(nameText);
            //直接获取指定标签名的文本内容
            String priceText=book.elementText("price");
            String authorText=book.elementText("author");
            //System.out.println(priceText);
            String snValue=book.attributeValue("sn");
            //new BigDecimal(priceText) String 转换为BigDecimal
            System.out.println(new Book(snValue,nameText, new BigDecimal(priceText),authorText));
        }
    }
}
