package com.java.mphasis.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmploySearch {

	private int empno;

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	public Employ searchEmploy() {
		Employ employ = null;
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from Employ where empno=?";
		try {
			PreparedStatement pst = con.prepareStatement(cmd);
			pst.setInt(1, empno);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				employ = new Employ();
				employ.setEmpno(rs.getInt("empno"));
				employ.setName(rs.getString("name"));
				employ.setGender(rs.getString("gender")); 
				employ.setDept(rs.getString("dept"));
				employ.setDesig(rs.getString("desig"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return employ;
	}
}
