

package com.dts.project.dao;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;
import com.dts.project.model.Patient;

public class PatientDAO extends AbstractDataAccessObject
{
	Connection con;
	Patient sample;
	public PatientDAO()
	{
		con = getConnection();
	}

	public boolean addPatient(Patient apatient)
	{
		boolean flag=false;
		PreparedStatement pstpatient=null;
		Connection con=null;
		try{
			con=getConnection();
			String insertsql="insert into patient values(?,?,?,?,?,?,?,?)";
			pstpatient=con.prepareStatement(insertsql);
			pstpatient.setString(1,apatient.getLoginname());
			pstpatient.setString(2,apatient.getAge());
			pstpatient.setString(3,apatient.getHeight());


			pstpatient.setString(4,apatient.getWeight());
			pstpatient.setString(5,apatient.getBloodgroup());
			pstpatient.setString(6,apatient.getBp());
			pstpatient.setString(7,apatient.getSugar());
			pstpatient.setString(8,DateWrapper.parseDate(new java.util.Date()));
			int n=pstpatient.executeUpdate();
			if(n>0)
			{
			flag=true;
			}
			return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
	}finally
	{
		try{
			pstpatient.close();
			con.close();
		}
		catch(Exception e)
		{

		}
	}
			return flag;
		}

	public boolean updatePatient(Patient apatient)
	{


		boolean flag=false;
		PreparedStatement pstpatient=null;
		Connection con=null;
		try{
			con=getConnection();
			String updatesql="update patient set      age=?,height=?,weight=?,bloodgroup=?,bp=?,sugar=?,regdate=? where loginname=?";
			pstpatient=con.prepareStatement(updatesql);
			pstpatient.setString(8,apatient.getLoginname());
			pstpatient.setString(1,apatient.getAge());
                 		pstpatient.setString(2,apatient.getHeight());
			pstpatient.setString(3,apatient.getWeight());
			pstpatient.setString(4,apatient.getBloodgroup());
			pstpatient.setString(5,apatient.getBp());
			pstpatient.setString(6,apatient.getSugar());
			pstpatient.setString(7,DateWrapper.parseDate(new java.util.Date()));
			int n=pstpatient.executeUpdate();
			if(n>0)
			{
				flag=true;
			}
			return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
	}finally
	{
		try{
			pstpatient.close();
			con.close();


	}
		catch(Exception e)
		{

		}
	}
			return flag;
		}


	public CoreHash viewPatientDetails(String loginname)
	{
		CoreHash acorehash=new CoreHash();
		PreparedStatement pstpatient=null;
		Connection con=null;
		ResultSet rs=null;
		try{
			con=getConnection();
			String selectsql="select * from patient where loginname=?";
			pstpatient=con.prepareStatement(selectsql);
			pstpatient.setString(1,loginname);
			rs=pstpatient.executeQuery();
			Patient apatient=null;
			int i=0;
			while(rs.next())
			{
				apatient=new Patient();
				apatient.setLoginname(rs.getString(1));
				apatient.setAge(rs.getString(2));
				apatient.setHeight(rs.getString(3));
				apatient.setWeight(rs.getString(4));


				apatient.setBloodgroup(rs.getString(5));
				apatient.setBp(rs.getString(6));
				apatient.setSugar(rs.getString(7));
				apatient.setRegdate1(rs.getDate(8));
			acorehash.put(new Integer(i),apatient);
			i++;
            		}
			return acorehash;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try{
				rs.close();
				pstpatient.close();
				con.close();
			}
			catch(Exception e)
			{

			}
		}
				return acorehash;
	}
		public CoreHash viewAllPatientDetails()
	{
		CoreHash acorehash=new CoreHash();
		PreparedStatement pstpatient=null;
		Connection con=null;


	ResultSet rs=null;
		try{
			con=getConnection();
			String selectsql="select * from patient";
			pstpatient=con.prepareStatement(selectsql);
			rs=pstpatient.executeQuery();
			Patient apatient=null;
			int i=0;
			while(rs.next())
			{
				apatient=new Patient();
				apatient.setLoginname(rs.getString(1));
				apatient.setAge(rs.getString(2));
				apatient.setHeight(rs.getString(3));
				apatient.setWeight(rs.getString(4));
				apatient.setBloodgroup(rs.getString(5));
				apatient.setBp(rs.getString(6));
				apatient.setSugar(rs.getString(7));
				apatient.setRegdate1(rs.getDate(8));
			acorehash.put(new Integer(i),apatient);
			i++;

			}
			return acorehash;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try{


				rs.close();
				pstpatient.close();
				con.close();
			}
			catch(Exception e)
			{

			}
		}
				return acorehash;
	}
}

