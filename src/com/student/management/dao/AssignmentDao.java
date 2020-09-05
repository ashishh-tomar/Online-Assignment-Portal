package com.student.management.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.student.management.entities.Assignment;

public class AssignmentDao {

private Connection con;
	
	public AssignmentDao(Connection con) 
	{
		// TODO Auto-generated constructor stub
		this.con=con;
	}
	
	public boolean UpdateAssignment(Assignment a)
	{
		boolean flag=false;
		try {
			String sql="insert into assignment values(?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,a.getTitle());
			pst.setString(2,a.getContent());
			pst.setString(3,a.getDate());
			pst.executeUpdate();
			
			flag=true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
		
	}
	
	public List<Assignment> getAllAssignments()
	{
		List<Assignment> list=new ArrayList<>();
		
		//fetch all Assignments
		
		try {
			PreparedStatement pst=con.prepareStatement("select * from assignment");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				String title=rs.getString(1);
				String content=rs.getString(2);
				String date=rs.getString(3);
				
				Assignment a=new Assignment(title,content,date);
				list.add(a);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
		
	}
}
