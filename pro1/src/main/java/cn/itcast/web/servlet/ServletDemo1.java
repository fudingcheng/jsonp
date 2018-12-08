package cn.itcast.web.servlet;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fudingcheng on 2018/4/15.
 */
public class ServletDemo1 extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("username","zs");
        jsonObject.put("password","123");
        
        String callback = req.getParameter("backcall");				//show
        //resp.getWriter().print(callback+"('"+jsonObject+"')");		//show({username:zs})
        
        if(callback!=null){
        	//JSONP
        	 resp.getWriter().print(callback+"('"+jsonObject+"')");
        }else{
        	//Java方式调用
        	resp.getWriter().print(jsonObject);
        }
        
        test(ServletDemo1.class);
        
    }
    
    
    public void test(Class c){
    	
    }
    
}
