package com.cos.kakao.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.kakao.domain.product.Product;
import com.cos.kakao.domain.user.User;
import com.cos.kakao.service.ProductService;
import com.cos.kakao.util.Script;

@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd = request.getParameter("cmd");
		ProductService productService = new ProductService();
		if(cmd.equals("list")) { //상품 리스트
			List<Product> products = productService.상품목록();
			request.setAttribute("products", products);
			System.out.println("products : "+products);
			RequestDispatcher dis = request.getRequestDispatcher("product/list.jsp");
			dis.forward(request, response);
			
		}else if(cmd.equals("detail")) { //상품 상세보기
			int id = Integer.parseInt(request.getParameter("id"));
			Product dto = productService.상품상세보기(id);
			request.setAttribute("dto", dto);
			System.out.println("detail : "+dto);
			RequestDispatcher dis = request.getRequestDispatcher("product/detail.jsp");
			dis.forward(request, response);
		}
	}

}
