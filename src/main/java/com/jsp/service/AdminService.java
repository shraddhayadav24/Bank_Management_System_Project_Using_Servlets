package com.jsp.service;

import java.util.ArrayList;
import java.util.List;

import com.jsp.Dao.AdminDao;
import com.jsp.Dao.BankManagerDao;
import com.jsp.dto.Admin;
import com.jsp.dto.BankManager;

public class AdminService {
	
	AdminDao adminDao=new AdminDao();
	BankManagerDao bankManagerDao=new BankManagerDao();
	public boolean validateAdmin(int a_id, String a_username, String a_password) {
		Admin admin = adminDao.getAdminById(a_id);
		if(admin.getAdmin_name().equals(a_username) && admin.getA_password().equals(a_password)) {
			return true;
		}else {
			return false;
		}
	}

	public Admin saveAdmin(Admin admin) {
		if(admin.getAdmin_name()!= null && admin.getA_password() != null) {
			return adminDao.saveAdmin(admin);
		}
		return null;
	}
	
	public boolean deleteAdmin(int id) {
		return adminDao.deleteAdminById(id);
	}
	
	//approve
	public boolean approval(int a_id, int m_id, String status) {
		Admin admin = adminDao.getAdminById(a_id);
		BankManager bankManager = bankManagerDao.getBankManagerById(m_id);
		if(admin != null && bankManager != null) {
			bankManager.setM_status(status);
			bankManager.setAdmin(admin);
			return bankManagerDao.approval(a_id, m_id);
		}
		return false;
	}
	// View all approved BankManager
	
	public List<BankManager> viewAllApprovedBankManager() {
		List<BankManager> managers = bankManagerDao.getAllBankManager();
		List<BankManager> approvedManager = new ArrayList<>();
		if(managers != null) {
			for(BankManager b : managers) {
				if(b.getM_status().equalsIgnoreCase("Approved")) {
					approvedManager.add(b);
				}
			}
			return approvedManager;
		}
		else {
			return null;
		}	
	}
	
	// View All UnApproved BankManagers
	
	public List<BankManager> viewAllUnApprovedBankManager() {
		List<BankManager> managers = bankManagerDao.getAllBankManager();
		List<BankManager> approvedManager = new ArrayList<>();
		if(managers != null) {
			for(BankManager b : managers) {
				if(b.getM_status().equalsIgnoreCase("UnApproved")) {
					approvedManager.add(b);
				}
			}
			return approvedManager;
		}
		else {
			return null;
		}
	
	}
	public Admin getAdminById(int id) {
		return adminDao.getAdminById(id);
	}
	
	public boolean deleteBankManagerById(int id) {
        return bankManagerDao.deleteBankManagerById(id);
    }
	

}