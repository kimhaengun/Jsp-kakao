package com.cos.kakao.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.kakao.domain.order.dto.OrderRespDto;
import com.cos.kakao.domain.user.User;
import com.cos.kakao.service.OrderService;
import com.cos.kakao.util.Script;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/order")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd = request.getParameter("cmd");
		OrderService orderService = new OrderService();
		 if(cmd.equals("orderForm")) {
			HttpSession session = request.getSession();
			User principal = (User)session.getAttribute("principal");
			if(principal != null) {
				int userId = Integer.parseInt(request.getParameter("userId"));
				int productId = Integer.parseInt(request.getParameter("productId"));
				System.out.println("userId 파싱Test:"+userId);
				System.out.println("productId 파싱Test:"+productId);
				OrderRespDto dto = orderService.상품주문(userId, productId);
				request.setAttribute("dto", dto);
				System.out.println("Order"+dto);
				RequestDispatcher dis = request.getRequestDispatcher("order/orderForm.jsp");
				dis.forward(request, response);
			}else {
				Script.back(response, "로그인이 필요합니다.");
			}

		}else if(cmd.equals("order")) {

		}
		
	}

}
