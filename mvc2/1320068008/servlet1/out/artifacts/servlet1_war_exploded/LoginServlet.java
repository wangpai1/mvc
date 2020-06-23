package Contorller;

import Entity.User;
import Service.LoginSerivce;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out=response.getWriter();//获得输出流

        //获取参数值
        String strName = request.getParameter("UName");
        String strPwd = request.getParameter("PWD");
        User user=new User(strName,strPwd);

        LoginSerivce serivce=new LoginSerivce();

        if(serivce.VerifyLogin(user))
        {
            out.println("welcome 用户："+strName+"<br>"+"密码："+strPwd+"<br>");
            Cookie cooUName=new Cookie("UName",strName);
            cooUName.setMaxAge(60*60*24*30);
            response.addCookie(cooUName);

            Cookie cooUPwd=new Cookie("UPwd",strPwd);
            cooUPwd.setMaxAge(60*60*24*30);
            response.addCookie(cooUPwd);

            HttpSession session = request.getSession(true);
//               session.setAttribute("UName",strName);
            ServletContext servletContext = getServletContext();
            Object num = servletContext.getAttribute("num");
//                out.println("<br>");
//                out.println("当前在线人数："+num);

            request.getRequestDispatcher("index.html").forward(request,response);

        }else{
            out.println("用户名密码错误");
        }




//            //资源释放
//            rs.close();
//            conn.close();
//            pstmt.close();
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
