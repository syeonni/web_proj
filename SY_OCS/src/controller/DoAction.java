package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DiseaseDataBean;
import model.Disease_prescripteionDataBean;
import model.InjectionDataBean;
import model.PatientDataBean;
import model.Pre_HistoryDataBean;
import model.PrescriptionDataBean;
import model.ReceiveDataBean;
import model.Search_testDataBean;
import model.StaffDataBean;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.msk.Action;

import dao.MybatisDoDBBean;

public class DoAction extends Action{
	public String prescriptionForm(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		String user_id = staff.getUser_id();

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List receiveList = null;
		receiveList = dbPro.getReceives(user_id);

		request.setAttribute("receiveList", receiveList);

		return  "/doView/prescripForm.jsp"; 
	} 

	public String choice(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		String user_id = staff.getUser_id();

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List receiveList = null;
		receiveList = dbPro.getReceives(user_id);

		PatientDataBean choicPatient = new PatientDataBean();
		choicPatient = dbPro.getPatient(request.getParameter("receive_id"));

		List diPrecriptionList = dbPro.getdiPrescription(choicPatient.getPatient_id());
		List drPrecriptionList = dbPro.getdrPrecription(choicPatient.getPatient_id());
		List inPrecriptionList = dbPro.getinPrecription(choicPatient.getPatient_id());

		request.setAttribute("receiveList", receiveList);
		request.setAttribute("c_receive_id", request.getParameter("receive_id"));
		request.setAttribute("choicPatient", choicPatient);
		request.setAttribute("diPrecriptionList", diPrecriptionList);
		request.setAttribute("drPrecriptionList", drPrecriptionList);
		request.setAttribute("inPrecriptionList", inPrecriptionList);

		return  "/doView/prescripForm.jsp"; 
	} 

	public String disease(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		return  "/common/suggestclientDisease.html"; 
	} 

	public String medicine(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable {
		System.out.println("=============!!!!!!!!!!");
		return  "/common/suggestclientDrug.html"; 
	} 

	public String injection(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		return  "/common/suggestclientInjection.html"; 
	} 

	public String prescriptionPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		String[] d_codes = request.getParameterValues("d_code");
		String[] m_codes = request.getParameterValues("m_code");
		String[] m_days  = request.getParameterValues("m_days");
		String[] m_one  = request.getParameterValues("m_one");
		String[] m_day  = request.getParameterValues("m_day");
		String[] i_codes = request.getParameterValues("i_code");

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();

		if(d_codes != null)

			for(int i=0; i<d_codes.length; i++){
				String diseaseD = request.getParameter(d_codes[i]);
				Disease_prescripteionDataBean dPrescription = new Disease_prescripteionDataBean();
				dPrescription.setReceive_id(request.getParameter("receive_id"));
				dPrescription.setDisease_id(d_codes[i]);
				if(diseaseD.equals("m")){
					dPrescription.setMaindisesyn("Y");
					dPrescription.setRo_yn("N");
				}
				else{
					dPrescription.setMaindisesyn("N");
					dPrescription.setRo_yn("Y");
				}
				dbPro.insert_dprescription(dPrescription);
				//System.out.println(dPrescription);
			}

		if(m_codes != null)
			for(int i=0; i<m_codes.length; i++){

				PrescriptionDataBean mPrescription = new PrescriptionDataBean();
				mPrescription.setReceive_id(request.getParameter("receive_id"));
				mPrescription.setPrescription_type("drug");
				mPrescription.setDays(Integer.parseInt(m_days[i]));
				mPrescription.setOne_dosage(Integer.parseInt(m_one[i]));
				mPrescription.setDay_dosage(Integer.parseInt(m_day[i]));
				mPrescription.setInjec_id("N");
				mPrescription.setDrug_id(m_codes[i]);
				mPrescription.setSuga_id("いい");
				mPrescription.setReceipt_yn("N");
				//System.out.println(mPrescription);
				dbPro.insert_prescription(mPrescription);
			}
		if(i_codes != null)
			for(int i=0; i<i_codes.length; i++){
				PrescriptionDataBean mPrescription = new PrescriptionDataBean();
				mPrescription.setReceive_id(request.getParameter("receive_id"));
				mPrescription.setPrescription_type("injection");
				mPrescription.setDays(1);
				mPrescription.setOne_dosage(1);
				mPrescription.setDay_dosage(1);
				mPrescription.setInjec_id(i_codes[i]);
				mPrescription.setDrug_id("N");
				mPrescription.setSuga_id("いい");
				mPrescription.setReceipt_yn("N");
				System.out.println(mPrescription);
				dbPro.insert_prescription(mPrescription);
			}

		dbPro.update_receive(request.getParameter("receive_id"));

		return  prescriptionForm(request,response); 
	}

	public String pre_history_Form(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 

		return  "/doView/pre_history_Form.jsp"; 
	}

	public String searchPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 

		request.setCharacterEncoding("euc-kr"); 
		String patient_name = request.getParameter("search_input");

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		
		List diPrecriptionList = dbPro.getdiPrescription_patient_name(patient_name);
		List drPrecriptionList = dbPro.getdrPrecription_patient_name(patient_name);
		List inPrecriptionList = dbPro.getinPrecription_patient_name(patient_name);

		request.setAttribute("diPrecriptionList", diPrecriptionList);
		request.setAttribute("drPrecriptionList", drPrecriptionList);
		request.setAttribute("inPrecriptionList", inPrecriptionList);


		return  "/doView/pre_history_Form.jsp"; 
	} 

	public String pre_imageFormUpload_Form(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List injection_prescriptionList = dbPro.selectInjectionPrescription();

		request.setAttribute("injection_prescriptionList", injection_prescriptionList);

		return  "/doView/pre_imageFormUpload_Form.jsp"; 
	} 

	public String injec_choice(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List injection_prescriptionList = dbPro.selectInjectionPrescription();
		request.setAttribute("injection_prescriptionList", injection_prescriptionList);

		InjectionDataBean choice_injec = dbPro.selectChoiceInjec(request.getParameter("prescription_id"));
		request.setAttribute("choice_injec", choice_injec);

		request.setAttribute("prescription_id", request.getParameter("prescription_id"));
		request.setAttribute("patient_id", request.getParameter("patient_id"));
		request.setAttribute("receive_id", request.getParameter("receive_id"));

		return  "/doView/pre_imageFormUpload_Form.jsp"; 
	} 

	public String pre_imageFormUpload_FormPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		request.setCharacterEncoding("euc-kr"); 
		String realFolder = "";
		String encType = "euc-kr";
		int maxSize = 5*1024*1024;

		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath("fileSave");

		MultipartRequest multi = null;

		multi = new MultipartRequest(request, realFolder,maxSize, encType, new DefaultFileRenamePolicy());

		Enumeration files = multi.getFileNames();

		String filename = "";
		File file = null;

		while(files.hasMoreElements()){
			String name = (String) files.nextElement();
			filename = multi.getFilesystemName(name);
			String original = multi.getContentType(name);
			file = multi.getFile(name);
		}

		String prescription_id = request.getParameter("prescription_id");
		String patient_id = request.getParameter("patient_id");
		String receive_id = request.getParameter("receive_id");
		String injec_id = request.getParameter("injec_id");

		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		String user_id = staff.getUser_id();

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();

		Search_testDataBean search_test = new Search_testDataBean();

		if(filename != null)
			search_test.setImage(filename);
		else
			search_test.setImage(" ");

		search_test.setPatient_id(patient_id);
		search_test.setReceive_id(receive_id);
		search_test.setPrescription_id(prescription_id);
		search_test.setInjec_id(injec_id);
		search_test.setUser_id(user_id);
		search_test.setOpinion("N");

		dbPro.insert_search_test(search_test);

		return  pre_imageFormUpload_Form(request,response); 
	}

	public String pre_imageSearch_Form(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable {
		request.setCharacterEncoding("euc-kr"); 
		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		String user_id = staff.getUser_id();

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List search_testList = dbPro.getSearch_testList(user_id);

		request.setAttribute("search_testList", search_testList);

		return  "/doView/pre_imageSearch_Form.jsp"; 
	} 

	public String choice_search_test(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable { 
		StaffDataBean staff = (StaffDataBean) request.getSession().getAttribute("staff");
		String user_id = staff.getUser_id();

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		List search_testList = dbPro.getSearch_testList(user_id);

		request.setAttribute("search_testList", search_testList);

		//======

		request.setAttribute("image", request.getParameter("image"));
		request.setAttribute("search_test_id", request.getParameter("search_test_id"));
		request.setAttribute("patient_name", request.getParameter("patient_name"));

		return  "/doView/pre_imageSearch_Form.jsp"; 
	} 

	public String pre_imageSearch_FormPro(HttpServletRequest request,
			HttpServletResponse response)  throws Throwable {
		request.setCharacterEncoding("euc-kr"); 
		String search_test_id = request.getParameter("search_test_id");
		String search_test_opinion = request.getParameter("search_test_opinion");

		MybatisDoDBBean dbPro = MybatisDoDBBean.getInstance();
		dbPro.update_search_test(search_test_id,search_test_opinion);

		return  pre_imageSearch_Form(request,response); 
	}
}
