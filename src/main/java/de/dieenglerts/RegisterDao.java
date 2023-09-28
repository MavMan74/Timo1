package de.dieenglerts;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	private String dburl="jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbPassword="";
	private String dbDriver ="com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			System.out.println("Datenbankverbindung fehlgeschlagen!");
			e.printStackTrace();
		}
	}
	public Connection getConnection() {  //Wichtig Import java.sql
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //Im con Objekt speichern
		return con;
	}
	
	
	public String insert(Member member) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Daten erfolgreich gespeichert";
		//Query in String speichern - Prepared Statement
		String sql = "insert into member values(?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getUname());
			ps.setString(2, member.getPassword());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getPhone());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Daten konnten nicht gespeichert werden!";
		}
		return result;
	}
}


