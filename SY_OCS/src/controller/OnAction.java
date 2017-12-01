package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DepartmentDataBean;
import model.PatientDataBean;
import model.ReceiptDataBean;
import model.ReceiveDataBean;

import com.sist.msk.Action;

import dao.MybatisOnDBBean;


public class OnAction extends Action{
	public String receiptDoForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		return "/onView/receiptDoForm.jsp";
	} 
	public String receiveForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 

		MybatisOnDBBean dDbPro = new MybatisOnDBBean();
		List departmentList = null;
		departmentList = dDbPro.getDepartments();

		request.setAttribute("departmentList", departmentList);

		return "/onView/receiveForm.jsp";
	} 
	public String patient_regForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		return "/onView/patient_regForm.jsp";
	} 
	public String patient_regPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr");

		PatientDataBean patient = new PatientDataBean();

		patient.setPatient_name(request.getParameter("patient_name"));
		patient.setJumin1(request.getParameter("jumin1"));
		patient.setJumin(request.getParameter("jumin"));
		patient.setPatient_sex(request.getParameter("patient_sex"));
		patient.setPatient_age(request.getParameter("patient_age"));
		patient.setPatient_phone(request.getParameter("patient_phone"));
		patient.setPatient_unusual(request.getParameter("patient_unusual"));
		patient.setPatient_itype(request.getParameter("patient_itype"));

		String patient_address = request.getParameter("zipNo1") + "-" + request.getParameter("zipNo1") + " "
				+ request.getParameter("address1") + "-" + request.getParameter("address2");
		patient.setPatient_address(patient_address);

		String patient_btype = request.getParameter("patient_btype2") + request.getParameter("patient_btype1");
		patient.setPatient_btype(patient_btype);

		MybatisOnDBBean patientDbPro = MybatisOnDBBean.getInstance();
		patientDbPro.insertPatient(patient);

		return "/on/receiveForm";
	} 

	public String searchPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		List patientList = null;
		MybatisOnDBBean pDbPro = new MybatisOnDBBean();
		int pCount = pDbPro.getPatientCount();
		if(pCount>0){
			patientList = pDbPro.getPatients(request.getParameter("search_input"), request.getParameter("search_condition"));
		}
		request.setAttribute("pCount",pCount);
		request.setAttribute("patientList", patientList);


		List departmentList = null;
		departmentList = pDbPro.getDepartments();

		request.setAttribute("departmentList", departmentList);

		return  "/onView/receiveForm.jsp"; 
	} 

	public String searchPro2(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		List patientList = null;
		MybatisOnDBBean pDbPro = new MybatisOnDBBean();
		int pCount = pDbPro.getPatientCount();
		if(pCount>0){
			patientList = pDbPro.getPatients(request.getParameter("search_input"), request.getParameter("search_condition"));
		}
		request.setAttribute("pCount",pCount);
		request.setAttribute("patientList", patientList);


		return  "/onView/receiptDoForm.jsp"; 
	} 

	public String choice(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		MybatisOnDBBean pDbPro = new MybatisOnDBBean();
		PatientDataBean choicPatient = new PatientDataBean();
		choicPatient = pDbPro.getPatient(request.getParameter("patient_id"));

		String choicfr = pDbPro.getPatient_fr(request.getParameter("patient_id"));

		request.setAttribute("choicPatient", choicPatient);
		request.setAttribute("pCount", request.getAttribute("pCount"));
		request.setAttribute("choicfr", choicfr);

		List departmentList = null;
		departmentList = pDbPro.getDepartments();

		request.setAttribute("departmentList", departmentList);

		return  "/onView/receiveForm.jsp"; 
	}

	public String recivePro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		System.out.println("aaaa"+request.getParameter("suser_name"));
		MybatisOnDBBean dbPro = new MybatisOnDBBean();
		ReceiveDataBean receive = new ReceiveDataBean();
		receive.setPatient_id(request.getParameter("patient_id"));
		receive.setUser_id(request.getParameter("suser_name"));
		receive.setFmyn(request.getParameter("patient_fr"));
		receive.setTreat_status(request.getParameter("patient_unusual"));

		dbPro.insertReceive(receive);

		return  "/onView/receivePro.jsp"; 
	} 

	public String choicePatientRe(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		String patient_id = request.getParameter("patient_id");
		MybatisOnDBBean dbPro = new MybatisOnDBBean();


		//접수 정보 옮기기
		List receivesListN = dbPro.getReceivesN(patient_id);
		if(receivesListN!=null){
			for(int i=0; i<receivesListN.size(); i++){
				ReceiveDataBean receive = (ReceiveDataBean) receivesListN.get(i);

				ReceiptDataBean receipt = new ReceiptDataBean();

				if(receive.getFmyn().equals("초진")){
					if(receive.getReceive_date().getHours()>=9 && receive.getReceive_date().getHours() <= 18){
						receipt.setSuga_id("AA155");
						receipt.setDetail_name("진찰료");
						receipt.setPatients_cost(14620);
						receipt.setCorporation_cost(0);
						receipt.setAll_patientcost(0);
					}
					else{
						receipt.setSuga_id("AA155010");
						receipt.setDetail_name("진찰료");
						receipt.setPatients_cost(17890);
						receipt.setCorporation_cost(0);
						receipt.setAll_patientcost(0);
					}
				}else{
					if(receive.getReceive_date().getHours()>=9 && receive.getReceive_date().getHours() <= 18){
						receipt.setSuga_id("AA255");
						receipt.setDetail_name("진찰료");
						receipt.setPatients_cost(10600);
						receipt.setCorporation_cost(0);
						receipt.setAll_patientcost(0);
					}
					else{
						receipt.setSuga_id("AA255010");
						receipt.setDetail_name("진찰료");
						receipt.setPatients_cost(12650);
						receipt.setCorporation_cost(0);
						receipt.setAll_patientcost(0);
					}
				}

				receipt.setReceive_id(receive.getReceive_id());
				receipt.setSelect_pay("N");
				receipt.setReceiptyn("N");

				dbPro.insertReceipt(receipt);
			}
		}
		//검사 정보 옮기기
		List injectsListN = dbPro.getInjectsListN(patient_id);
		if(injectsListN!=null){
			for(int i=0; i<injectsListN.size(); i++){
				System.out.println(injectsListN.get(i));
				ReceiptDataBean receipt = new ReceiptDataBean();
				receipt = (ReceiptDataBean) injectsListN.get(i);
				dbPro.insertReceipt2(receipt);
			}
		}


		List receiptList = dbPro.getReceiptList(patient_id);
		request.setAttribute("receiptList", receiptList);
		request.setAttribute("patient_id", patient_id);


		return  "/onView/receiptDoForm.jsp"; 
	} 

	public String receiptDoFormPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		MybatisOnDBBean dbPro = new MybatisOnDBBean();
		
		String[] receipt_id = request.getParameterValues("receipt_id");
		for(int i=0; i<receipt_id.length; i++){
			dbPro.updateReceiptY(receipt_id[i]);
		}

		return  receiptDoForm(request,response); 
	} 
}
